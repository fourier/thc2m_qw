# -*- Mode: makefile; -*-

ERICWTOOLS_PATH := ~/Applications/ericw-tools
MAP_BASE_NAME := pocket_infinity
WORK_DIR_PATH := .
CPU_COUNT := $(shell nproc --all)
GAME_DIR_PATH = ~/Applications/nquake
TARGET_MAP = $(WORK_DIR_PATH)/$(MAP_BASE_NAME)-compile.map
TARGET_BSP = $(WORK_DIR_PATH)/$(MAP_BASE_NAME).bsp

.PHONY: all
.DEFAULT_GOAL := all

all: export bsp vis light

export: $(MAP_BASE_NAME).map
	cp $(MAP_BASE_NAME).map $(TARGET_MAP)

bsp: $(TARGET_MAP)
	$(ERICWTOOLS_PATH)/qbsp -wadpath . -leaktest $(TARGET_MAP) $(TARGET_BSP)

vis: $(TARGET_BSP)
	$(ERICWTOOLS_PATH)/vis -threads $(CPU_COUNT) -level 4 $(TARGET_BSP)

light: $(TARGET_BSP)
	$(ERICWTOOLS_PATH)/light -threads $(CPU_COUNT) -soft -extra -extra4 -bspx -phong 1 $(TARGET_BSP)

install: all
	cp $(TARGET_BSP) $(GAME_DIR_PATH)/qw/maps
