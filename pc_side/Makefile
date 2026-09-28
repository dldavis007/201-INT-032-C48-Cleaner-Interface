CC := gcc
SRC := ../Source\ Files
BUILD := build
ifeq ($(OS),Windows_NT)
EXE := cleaner_host.exe
LDLIBS := -lws2_32 -lm
MKDIR_BUILD = if not exist $(BUILD) mkdir $(BUILD)
CLEAN_BUILD = if exist $(BUILD) rmdir /s /q $(BUILD)
CLEAN_EXE = if exist $(EXE) del /f /q $(EXE)
RUN_PREFIX =
else
EXE := cleaner_host
LDLIBS := -pthread -lm
MKDIR_BUILD = mkdir -p $(BUILD)
CLEAN_BUILD = rm -rf $(BUILD)
CLEAN_EXE = rm -f $(EXE)
RUN_PREFIX = ./
endif

CPPFLAGS := -DPC_SIDE -DSKIP_EEPROM_LOAD -I. -I"../Source Files" -include pc_side.h
CFLAGS := -std=gnu11 -O0 -g -funsigned-char -fcommon -Wno-unknown-pragmas \
          -Wno-builtin-declaration-mismatch -Wno-int-conversion -Wno-pointer-to-int-cast \
          -MMD -MP

PRODUCTION := Subroutines.c Subroutines1.c mco.c user.c Interrupts.c PID.c
OBJECTS := $(addprefix $(BUILD)/,$(PRODUCTION:.c=.o)) $(BUILD)/main.o $(BUILD)/pc_side_host.o

.DEFAULT_GOAL := all

$(BUILD):
	$(MKDIR_BUILD)

$(BUILD)/%.o: $(SRC)/%.c | $(BUILD)
	$(CC) $(CPPFLAGS) $(CFLAGS) -w -c -o $@ "$<"

$(BUILD)/%.o: %.c | $(BUILD)
	$(CC) $(CPPFLAGS) $(CFLAGS) -Wall -Wextra -c -o $@ $<

$(EXE): $(OBJECTS)
	$(CC) -o $@ $(OBJECTS) $(LDLIBS)

.PHONY: all run clean
all: $(EXE)
run: $(EXE)
	$(RUN_PREFIX)$(EXE)
clean:
	$(CLEAN_BUILD)
	$(CLEAN_EXE)

# -MMD writes build/*.d listing the headers each object included, so editing a
# header rebuilds what includes it. -MP keeps a deleted header from failing it.
-include $(wildcard $(BUILD)/*.d)
