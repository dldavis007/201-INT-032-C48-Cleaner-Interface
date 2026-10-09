/* Tests link the production firmware; wrappers isolate time and the CAN bus. */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "Controller.h"
#include "mco.h"
#include "mcohw.h"
#include "Subroutines.h"
#include "EEProm.h"
#include "mc9s12a128.h"

extern UNSIGNED8 gProcImg[PROCIMG_SIZE];
extern unsigned cam_add;
extern char cam_addx[2], State, Gen_Flags;
extern unsigned long StateTime;
extern UNSIGNED16 activeCamAddress, paired_camera_address;
extern struct menu_var InternalExternalCameraSetting, CamEnable;
extern struct menu_var CompressorOnOff, CntrStrokes, LightLevel, CamTag, NullVar;
extern RPDO_CONFIG gRPDOConfig[];
static CAN_MSG received, transmitted[128];
static unsigned tx_count, failures, checks;
static int rx_pending;
static UNSIGNED16 now;
#define CHECK(value) do { ++checks; if (!(value)) { ++failures; printf("FAIL line %d: %s\n", __LINE__, #value); } } while (0)
void __wrap_Display(char *text) { (void)text; }
UNSIGNED16 __wrap_MCOHW_GetTime(void) { return now; }
UNSIGNED8 __wrap_MCOHW_IsTimeExpired(UNSIGNED16 deadline) {
    return (UNSIGNED16)(now - deadline - 1) < 0x8000;
}
UNSIGNED8 __wrap_MCOHW_PushMessage(CAN_MSG *msg) {
    if (tx_count < 128) transmitted[tx_count++] = *msg;
    return 1;
}
UNSIGNED8 __wrap_MCOHW_PullMessage(CAN_MSG *msg) {
    if (!rx_pending) return 0;
    *msg = received; rx_pending = 0; return 1;
}
static void receive(unsigned id, const unsigned char *data, unsigned len) {
    memset(&received, 0xa5, sizeof received);
    received.ID = id; received.LEN = len;
    memcpy(received.BUF, data, len);
    rx_pending = 1;
    MCO_ProcessStack();
}
static void reset(void) {
    memset(gProcImg, 0, PROCIMG_SIZE);
    memset(sfr_regs, 0, 0x400);
    State = FinishState; StateTime = 123;
    InternalExternalCameraSetting.value = CamEnable.value = 1;
    cam_add = 0x2731;
    activeCamAddress = paired_camera_address = 0;
    Gen_Flags = 0; tx_count = 0; now = 1000;
    NullVar.str_enum = "";
}
static void pair(unsigned unit, unsigned address) {
    unsigned char data[8] = {0};
    data[0] = unit; data[1] = address; data[2] = address >> 8;
    receive(0x321, data, 8); PollPairedCamera();
}
static void select_camera(unsigned address) {
    unsigned char data[2];
    data[0] = address; data[1] = address >> 8;
    receive(0x421, data, 2); CameraMain();
    gProcImg[OUT_digi_4] = gProcImg[OUT_digi_5] = 0;
}
static int trigger(void) {
    unsigned char command = 2;
    receive(0x200 + NODE_ID, &command, 1);
    return TrigRequest();
}
static void test_pairing(void) {
    unsigned i;
    unsigned char short_pair[3] = {NODE_ID, 0x34, 0x12};
    reset();
    CHECK(sizeof(UNSIGNED16) == 2);
    CHECK(CAMERA_PAIRING >= OUT_ana_1 + 2 && CAMERA_PAIRING + 8 <= PROCIMG_SIZE);
    CHECK(gRPDOConfig[6].CANID == 0x321 && gRPDOConfig[6].len == 8);
    pair(NODE_ID, 0xabcd); CHECK(paired_camera_address == 0xabcd);
    for (i=0; i<8; ++i) CHECK(!gProcImg[CAMERA_PAIRING+i]);
    pair(NODE_ID, 0); CHECK(paired_camera_address == 0xabcd);
    pair(0x22, 0x7654); CHECK(paired_camera_address == 0xabcd);
    pair(0x22, 0xabcd); CHECK(!paired_camera_address);
    pair(NODE_ID, 0x4444); pair(NODE_ID, 0x4444); CHECK(paired_camera_address == 0x4444);
    receive(0x321, short_pair, 3); PollPairedCamera(); CHECK(paired_camera_address == 0x4444);
    {
        unsigned char padded[8] = {0x31,0x27,0,0,0,0,0,0};
        receive(0x421, padded, 8); CameraMain();
        CHECK(activeCamAddress == 0x2731);
    }
    gProcImg[OUT_digi_13] = 81; gProcImg[OUT_digi_14] = 23;
    gProcImg[OUT_ana_0] = 67; gProcImg[OUT_ana_1] = 89;
    pair(NODE_ID, 0x4567);
    CHECK(gProcImg[OUT_digi_13] == 81 && gProcImg[OUT_digi_14] == 23);
    CHECK(gProcImg[OUT_ana_0] == 67 && gProcImg[OUT_ana_1] == 89);
}
static void test_triggers(void) {
    reset(); CHECK(!trigger()); CHECK(StateTime == 123 && State == FinishState);
    CHECK(!(gProcImg[OUT_digi_0] & 2));
    select_camera(cam_add); CHECK(activeCamAddress == cam_add && (VSEL_PORT & CAM_ON));
    CHECK(trigger()); CHECK(State == TrigState && !StateTime);
    CHECK(gProcImg[IN_digi_15] & 1);
    StateTime = 555; CHECK(!trigger()); CHECK(StateTime == 555);
    State = FinishState; StateTime = 123; select_camera(0x4567);
    CHECK(!(VSEL_PORT & CAM_ON)); CHECK(!trigger()); CHECK(StateTime == 123);
    select_camera(cam_add); CamEnable.value = 2; CameraMain();
    CHECK(!(VSEL_PORT & CAM_ON) && PWMDTY7 == 0); CHECK(!trigger());
    InternalExternalCameraSetting.value = 2;
    CHECK(!trigger()); pair(NODE_ID, 0xabcd);
    CHECK(!trigger()); select_camera(0xabcd);
    CHECK(trigger()); /* External operation also works with the internal camera disabled. */
    State = FinishState; select_camera(0x3344); CHECK(!trigger());
    pair(0x22, 0xabcd); select_camera(0xabcd); CHECK(!trigger());
}
static void test_scanning_and_commands(void) {
    unsigned char scan[5] = {2,0,0,0,0};
    unsigned char store[5] = {4,0xfe,0xff,0x67,0x45};
    reset(); cam_add = 0xfffe; now = 65500;
    receive(0x521, scan, 5); CameraMain();
    gProcImg[OUT_digi_6] = 0;
    CHECK(tx_count == 0);
    pair(NODE_ID, 0x2222); CHECK(paired_camera_address == 0x2222);
    now = (UNSIGNED16)(65500 + 655); CameraMain(); CHECK(tx_count == 0);
    ++now; CameraMain(); CHECK(tx_count == 1);
    CHECK(transmitted[0].ID == 0x2a1 && transmitted[0].LEN == 3);
    CHECK(transmitted[0].BUF[0] == 0xfe && transmitted[0].BUF[1] == 0xff && transmitted[0].BUF[2] == 0);
    CameraMain(); CHECK(tx_count == 1);
    receive(0x521, store, 5); CameraMain(); CHECK(cam_add == 0x4567);
    cam_add = 0; Load_Camera_Add(); CHECK(cam_add == 0x4567);
    CamEnable.value = 2; receive(0x521, scan, 5); CameraMain();
    gProcImg[OUT_digi_6] = 0; now += 1000; CameraMain(); CHECK(tx_count == 1);
    CamEnable.value = 1; scan[0] = 3; receive(0x521, scan, 5); CameraMain();
    CHECK(cam_add == 0x4567 && tx_count == 1); /* Undefined combined command rejected. */
}
static void test_settings_and_menus(void) {
    unsigned i;
    char *record = EE_ADDR(0x0c60);
    reset(); memset(pc_eeprom, 0xff, sizeof pc_eeprom);
    EE_ADDR(0x0c50)[0] = 0x34; EE_ADDR(0x0c50)[1] = 0x12;
    Load_Camera_Settings();
    CHECK(InternalExternalCameraSetting.value == 1 && CamEnable.value == 1);
    InternalExternalCameraSetting.value = 2; CamEnable.value = 2;
    strcpy(CntrStrokes.str_value, " 9"); Save_Variables();
    CHECK(record[0] == 1 && record[1] == 2 && record[2] == 2);
    CHECK((unsigned char)EE_ADDR(0x0a00)[0] == 0xff);
    CHECK(EE_ADDR(0x0c50)[0] == 0x34 && EE_ADDR(0x0c50)[1] == 0x12);
    InternalExternalCameraSetting.value = CamEnable.value = 1;
    strcpy(CntrStrokes.str_value, " 1"); Load_Variables();
    CHECK(CntrStrokes.value == 9 && InternalExternalCameraSetting.value == 2 && CamEnable.value == 2);
    EEInit(); Load_Camera_Settings(); CHECK(InternalExternalCameraSetting.value == 2 && CamEnable.value == 2);
    record[0] = 0xff; Load_Variables(); /* A pre-migration CSV is unchanged. */
    CHECK(CntrStrokes.value == 9 && InternalExternalCameraSetting.value == 1 && CamEnable.value == 1);
    record[0] = 1; record[1] = 3; record[2] = 1; Load_Camera_Settings();
    CHECK(InternalExternalCameraSetting.value == 1 && CamEnable.value == 1);
    for (i=0; i<MenuSize; ++i) {
        if (Menuc[i].Index[2] == 1 && Menuc[i].Index[3] == 2) {
            CHECK(Menuc[i].VarPntr[0] == &InternalExternalCameraSetting);
            CHECK(Menuc[i].FunctPtr[0] == StdVarFunction);
        }
        if (Menuc[i].Index[2] == 4 && Menuc[i].Index[3] == 1) {
            CHECK(Menuc[i].VarPntr[6] == &CamEnable && Menuc[i].FunctPtr[6] == StdVarFunction);
            CHECK(Menuc[i].FunctPtr[7] == ExitMenu);
        }
    }
}
int main(void) {
    EEInit(); MCOUSER_ResetCommunication(); MCO_ProcessStack();
    test_pairing(); test_triggers(); test_scanning_and_commands(); test_settings_and_menus();
    printf("Camera migration: %u checks, %u failures\n", checks, failures);
    return failures ? 1 : 0;
}
