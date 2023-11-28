###############################################################################
# Makefile for project 
###############################################################################

## General options
PROJECT = 
MCU = PIC16F887
COMPILER = "MPLAB XC8"
TARGET = Debug
SHELL = C:\Windows\system32\cmd.exe

## Tools general options
CCFLAGS=--pass1 --errformat="Error at file %%f line %%l column %%c: (%%n) %%s" --warnformat="Warning at file %%f line %%l column %%c: (%%n) %%s" --msgformat="Message at file %%f line %%l column %%c: (%%n) %%s" -G --chip=16F887
LDFLAGS=--output=mcof -G --chip=16F887

## Processing Tools
CC=xc8.exe
ASM=xc8.exe
LD=xc8.exe
LIB=xc8.exe
#  D:/UNIVERSITATE/Master/Anul2, Semestrul1/SECDA/proiect/proteus/Proiect_SECDA_V1/PIC16F887/Debug/Debug.cof: TOOL=LD
#     D:/UNIVERSITATE/Master/Anul2, Semestrul1/SECDA/proiect/proteus/Proiect_SECDA_V1/PIC16F887/Debug/main.p1: TOOL=CC
#        D:/UNIVERSITATE/Master/Anul2, Semestrul1/SECDA/proiect/proteus/Proiect_SECDA_V1/PIC16F887/main.c
#     D:/UNIVERSITATE/Master/Anul2, Semestrul1/SECDA/proiect/proteus/Proiect_SECDA_V1/PIC16F887/Debug/LCD.p1: TOOL=CC
#        D:/UNIVERSITATE/Master/Anul2, Semestrul1/SECDA/proiect/proteus/Proiect_SECDA_V1/PIC16F887/LCD.c

# Build tree:
all:	Debug

Debug:	Debug.cof

Debug.cof:	main.p1 LCD.p1 
	$(LD) $(LDFLAGS)  -O"Debug.cof" "main.p1" "LCD.p1"

main.p1:	../main.c 
	$(CC) $(CCFLAGS)  -O"main.p1" "../main.c"

LCD.p1:	../LCD.c 
	$(CC) $(CCFLAGS)  -O"LCD.p1" "../LCD.c"

# tidy - delete all temporary files which are not involved in the target generation
tidy:
	rm -rf Debug.hxl
	rm -rf Debug.lst
	rm -rf Debug.sym
	rm -rf Debug.obj
	rm -rf Debug.sdb
	rm -rf Debug.as
	rm -rf ./startup.obj
	rm -rf ./startup.rlf
	rm -rf ./startup.as
	rm -rf ./startup.lst
	rm -rf ./funclist.
	rm -rf Debug.hex
	rm -rf main.pre
	rm -rf main.lst
	rm -rf LCD.pre
	rm -rf LCD.lst

# cleanup - delete all generated files
clean:	tidy
	rm -rf Debug.cof
	rm -rf main.p1
	rm -rf LCD.p1

