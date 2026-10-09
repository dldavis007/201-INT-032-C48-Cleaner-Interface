#ifndef EEProm_H
#define EEProm_H

void EEInit ( void );
void EEWrite ( int ArraySize, char WriteData[], int *WriteAddr );

#define ESTAT_CBEIF 0x80
#define ESTAT_CCIF 0x80

#define INITEE_Init 0x09


#define WordPrg 0x20
#define SecErase 0x40
#ifdef PC_SIDE
extern unsigned char pc_eeprom[0x800];
#define EE_ADDR(address) ((char *)pc_eeprom + ((address) - 0x0800))
#else
#define EE_ADDR(address) ((char *)(address))
#endif
#define EE_begin EE_ADDR(0x0800)

#endif