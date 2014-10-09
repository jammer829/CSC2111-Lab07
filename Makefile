AutomatedMakefile = am
CC = g++

FILES = RecursiveIntegration.o RombergIntegration.o Problem22_1.o

LAB_07_PATH = $(DRIVE_LETTER)/07-Romberg_Integration
GTKMM_PATH = $(DRIVE_LETTER)/MinGW/gtkmm

INC_DIRS = -I$(PROJECT_DIR)/CSC2110/
LIB_DIRS = -L$(PROJECT_DIR)/CSC2110/
LIBS = -lCSC2110

COMPILE = $(CC) $(INC_DIRS) -c
LINK = $(CC) $(LIB_DIRS) -o

all: RecursiveIntegration.o RombergIntegration.o Problem22_1.o
	$(LINK) Romberg.exe $(FILES) $(LIBS)

RecursiveIntegration.o: RecursiveIntegration.cpp RecursiveIntegration.h QueueLinked.h
	$(COMPILE) RecursiveIntegration.cpp

RombergIntegration.o: RombergIntegration.cpp RombergIntegration.h QueueLinked.h
	$(COMPILE) RombergIntegration.cpp

Problem22_1.o: Problem22_1.cpp Problem22_1.h QueueLinked.h
	$(COMPILE) Problem22_1.cpp