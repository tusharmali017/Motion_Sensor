#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/FWS_Motion_PIR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/FWS_Motion_PIR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=APP/Modbus/Lib/modbus_slave.c APP/Modbus/modbusdefines.c APP/app.c APP/callback.c APP/isr.c APP/lcdslave.c APP/sensor.c BIOS/bios.c BIOS/i2c1.c BIOS/i2c2.c BIOS/pinmap.c BIOS/spi1.c BIOS/timer1.c BIOS/timer2.c BIOS/uart1.c BIOS/uart2.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o ${OBJECTDIR}/APP/Modbus/modbusdefines.o ${OBJECTDIR}/APP/app.o ${OBJECTDIR}/APP/callback.o ${OBJECTDIR}/APP/isr.o ${OBJECTDIR}/APP/lcdslave.o ${OBJECTDIR}/APP/sensor.o ${OBJECTDIR}/BIOS/bios.o ${OBJECTDIR}/BIOS/i2c1.o ${OBJECTDIR}/BIOS/i2c2.o ${OBJECTDIR}/BIOS/pinmap.o ${OBJECTDIR}/BIOS/spi1.o ${OBJECTDIR}/BIOS/timer1.o ${OBJECTDIR}/BIOS/timer2.o ${OBJECTDIR}/BIOS/uart1.o ${OBJECTDIR}/BIOS/uart2.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o.d ${OBJECTDIR}/APP/Modbus/modbusdefines.o.d ${OBJECTDIR}/APP/app.o.d ${OBJECTDIR}/APP/callback.o.d ${OBJECTDIR}/APP/isr.o.d ${OBJECTDIR}/APP/lcdslave.o.d ${OBJECTDIR}/APP/sensor.o.d ${OBJECTDIR}/BIOS/bios.o.d ${OBJECTDIR}/BIOS/i2c1.o.d ${OBJECTDIR}/BIOS/i2c2.o.d ${OBJECTDIR}/BIOS/pinmap.o.d ${OBJECTDIR}/BIOS/spi1.o.d ${OBJECTDIR}/BIOS/timer1.o.d ${OBJECTDIR}/BIOS/timer2.o.d ${OBJECTDIR}/BIOS/uart1.o.d ${OBJECTDIR}/BIOS/uart2.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o ${OBJECTDIR}/APP/Modbus/modbusdefines.o ${OBJECTDIR}/APP/app.o ${OBJECTDIR}/APP/callback.o ${OBJECTDIR}/APP/isr.o ${OBJECTDIR}/APP/lcdslave.o ${OBJECTDIR}/APP/sensor.o ${OBJECTDIR}/BIOS/bios.o ${OBJECTDIR}/BIOS/i2c1.o ${OBJECTDIR}/BIOS/i2c2.o ${OBJECTDIR}/BIOS/pinmap.o ${OBJECTDIR}/BIOS/spi1.o ${OBJECTDIR}/BIOS/timer1.o ${OBJECTDIR}/BIOS/timer2.o ${OBJECTDIR}/BIOS/uart1.o ${OBJECTDIR}/BIOS/uart2.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=APP/Modbus/Lib/modbus_slave.c APP/Modbus/modbusdefines.c APP/app.c APP/callback.c APP/isr.c APP/lcdslave.c APP/sensor.c BIOS/bios.c BIOS/i2c1.c BIOS/i2c2.c BIOS/pinmap.c BIOS/spi1.c BIOS/timer1.c BIOS/timer2.c BIOS/uart1.c BIOS/uart2.c main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/FWS_Motion_PIR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA606
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA606.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o: APP/Modbus/Lib/modbus_slave.c  .generated_files/flags/default/6dc5e45ed851e8551be0fa9a315de4d564f754a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP/Modbus/Lib" 
	@${RM} ${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o.d 
	@${RM} ${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/Modbus/Lib/modbus_slave.c  -o ${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/Modbus/modbusdefines.o: APP/Modbus/modbusdefines.c  .generated_files/flags/default/aac86e095233ad4123c37fbc16095a7ea6ebc01b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP/Modbus" 
	@${RM} ${OBJECTDIR}/APP/Modbus/modbusdefines.o.d 
	@${RM} ${OBJECTDIR}/APP/Modbus/modbusdefines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/Modbus/modbusdefines.c  -o ${OBJECTDIR}/APP/Modbus/modbusdefines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/Modbus/modbusdefines.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/app.o: APP/app.c  .generated_files/flags/default/838de1850a227e5be5a648d21e8ac7f0a4ea25e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/app.o.d 
	@${RM} ${OBJECTDIR}/APP/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/app.c  -o ${OBJECTDIR}/APP/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/app.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/callback.o: APP/callback.c  .generated_files/flags/default/85d1eeb1a33aaa07cf3a6cfb68dfa7d4a74d40fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/callback.o.d 
	@${RM} ${OBJECTDIR}/APP/callback.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/callback.c  -o ${OBJECTDIR}/APP/callback.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/callback.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/isr.o: APP/isr.c  .generated_files/flags/default/406926ffc9ff11c6c7e73d22f47fbe855f644428 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/isr.o.d 
	@${RM} ${OBJECTDIR}/APP/isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/isr.c  -o ${OBJECTDIR}/APP/isr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/isr.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/lcdslave.o: APP/lcdslave.c  .generated_files/flags/default/132e5e7fc185b19a31e5c5d6ae0059ff0ee557fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/lcdslave.o.d 
	@${RM} ${OBJECTDIR}/APP/lcdslave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/lcdslave.c  -o ${OBJECTDIR}/APP/lcdslave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/lcdslave.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/sensor.o: APP/sensor.c  .generated_files/flags/default/3bbb2bedf0e7c3f21302d27d4971d55ceb3a5568 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/sensor.o.d 
	@${RM} ${OBJECTDIR}/APP/sensor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/sensor.c  -o ${OBJECTDIR}/APP/sensor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/sensor.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/bios.o: BIOS/bios.c  .generated_files/flags/default/445bac352a714e7680de667c5bfb518d72d8f9c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/bios.o.d 
	@${RM} ${OBJECTDIR}/BIOS/bios.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/bios.c  -o ${OBJECTDIR}/BIOS/bios.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/bios.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/i2c1.o: BIOS/i2c1.c  .generated_files/flags/default/edf80e4d860473d7b8d10189ddea2e111d8b2b27 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/i2c1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/i2c1.c  -o ${OBJECTDIR}/BIOS/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/i2c1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/i2c2.o: BIOS/i2c2.c  .generated_files/flags/default/6f829230c09b92490e60103721c69e9eca4c89bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/i2c2.o.d 
	@${RM} ${OBJECTDIR}/BIOS/i2c2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/i2c2.c  -o ${OBJECTDIR}/BIOS/i2c2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/i2c2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/pinmap.o: BIOS/pinmap.c  .generated_files/flags/default/626b205e5074d35e35be8c4d8cb7ed497252e8d1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/pinmap.o.d 
	@${RM} ${OBJECTDIR}/BIOS/pinmap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/pinmap.c  -o ${OBJECTDIR}/BIOS/pinmap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/pinmap.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/spi1.o: BIOS/spi1.c  .generated_files/flags/default/7c0e923a285a762889a7e27589c9cb357c9a789 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/spi1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/spi1.c  -o ${OBJECTDIR}/BIOS/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/spi1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/timer1.o: BIOS/timer1.c  .generated_files/flags/default/20adbcf4bd5e4ede30740edb60d6c8f904db0ab2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/timer1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/timer1.c  -o ${OBJECTDIR}/BIOS/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/timer1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/timer2.o: BIOS/timer2.c  .generated_files/flags/default/76f5f75fbaa7b268472491896f1b030d2c84b51a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/timer2.o.d 
	@${RM} ${OBJECTDIR}/BIOS/timer2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/timer2.c  -o ${OBJECTDIR}/BIOS/timer2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/timer2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/uart1.o: BIOS/uart1.c  .generated_files/flags/default/7d4eb7299c9f81bc6080d8441ff7e384390aa27f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/uart1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/uart1.c  -o ${OBJECTDIR}/BIOS/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/uart1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/uart2.o: BIOS/uart2.c  .generated_files/flags/default/524252fc75cd3344eed146ae174a62deff88caa0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/uart2.o.d 
	@${RM} ${OBJECTDIR}/BIOS/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/uart2.c  -o ${OBJECTDIR}/BIOS/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/uart2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/8ac6776c5e6ad0fd5743f713fe91c858aad2110f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o: APP/Modbus/Lib/modbus_slave.c  .generated_files/flags/default/94d3bc96cff532a24dcb353025f1a230e47e0e0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP/Modbus/Lib" 
	@${RM} ${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o.d 
	@${RM} ${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/Modbus/Lib/modbus_slave.c  -o ${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/Modbus/modbusdefines.o: APP/Modbus/modbusdefines.c  .generated_files/flags/default/8cef377118f31856d87761dfa8466a8138046d8f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP/Modbus" 
	@${RM} ${OBJECTDIR}/APP/Modbus/modbusdefines.o.d 
	@${RM} ${OBJECTDIR}/APP/Modbus/modbusdefines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/Modbus/modbusdefines.c  -o ${OBJECTDIR}/APP/Modbus/modbusdefines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/Modbus/modbusdefines.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/app.o: APP/app.c  .generated_files/flags/default/51445fd416ef431166848520815380aac14d368b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/app.o.d 
	@${RM} ${OBJECTDIR}/APP/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/app.c  -o ${OBJECTDIR}/APP/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/app.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/callback.o: APP/callback.c  .generated_files/flags/default/6284fda8d86e8c251fef6e56a65dc3e7153cea79 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/callback.o.d 
	@${RM} ${OBJECTDIR}/APP/callback.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/callback.c  -o ${OBJECTDIR}/APP/callback.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/callback.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/isr.o: APP/isr.c  .generated_files/flags/default/7f8bf93fcde42d5fad12718632931f5b8e6f943a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/isr.o.d 
	@${RM} ${OBJECTDIR}/APP/isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/isr.c  -o ${OBJECTDIR}/APP/isr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/isr.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/lcdslave.o: APP/lcdslave.c  .generated_files/flags/default/bb043fafae887311f2894de43b42bdcc60f8d815 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/lcdslave.o.d 
	@${RM} ${OBJECTDIR}/APP/lcdslave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/lcdslave.c  -o ${OBJECTDIR}/APP/lcdslave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/lcdslave.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/sensor.o: APP/sensor.c  .generated_files/flags/default/939237ad38ac8bad172be93751d108ac0e301e08 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/sensor.o.d 
	@${RM} ${OBJECTDIR}/APP/sensor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/sensor.c  -o ${OBJECTDIR}/APP/sensor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/sensor.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/bios.o: BIOS/bios.c  .generated_files/flags/default/2b32ddab3d737695d1a6859071dbc5c1edaffa5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/bios.o.d 
	@${RM} ${OBJECTDIR}/BIOS/bios.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/bios.c  -o ${OBJECTDIR}/BIOS/bios.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/bios.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/i2c1.o: BIOS/i2c1.c  .generated_files/flags/default/f836ced9a7317a7b9d7a79de951f26c3947a53dd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/i2c1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/i2c1.c  -o ${OBJECTDIR}/BIOS/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/i2c1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/i2c2.o: BIOS/i2c2.c  .generated_files/flags/default/6359b25d8dee40778add082bc091436bb71099f1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/i2c2.o.d 
	@${RM} ${OBJECTDIR}/BIOS/i2c2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/i2c2.c  -o ${OBJECTDIR}/BIOS/i2c2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/i2c2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/pinmap.o: BIOS/pinmap.c  .generated_files/flags/default/41588e8fcdf77d491cd13d105ea370e6dbc7f6bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/pinmap.o.d 
	@${RM} ${OBJECTDIR}/BIOS/pinmap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/pinmap.c  -o ${OBJECTDIR}/BIOS/pinmap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/pinmap.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/spi1.o: BIOS/spi1.c  .generated_files/flags/default/acf0d740dc13144dd9660820048c443d22ab1381 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/spi1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/spi1.c  -o ${OBJECTDIR}/BIOS/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/spi1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/timer1.o: BIOS/timer1.c  .generated_files/flags/default/581ea3f16e748a988aa1b0fd590e270e7752b78c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/timer1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/timer1.c  -o ${OBJECTDIR}/BIOS/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/timer1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/timer2.o: BIOS/timer2.c  .generated_files/flags/default/f9376908f6048b42a4fb082d8f5c639233819a59 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/timer2.o.d 
	@${RM} ${OBJECTDIR}/BIOS/timer2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/timer2.c  -o ${OBJECTDIR}/BIOS/timer2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/timer2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/uart1.o: BIOS/uart1.c  .generated_files/flags/default/e0e959b5a7879c44791989fb1a21da7dee81b713 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/uart1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/uart1.c  -o ${OBJECTDIR}/BIOS/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/uart2.o: BIOS/uart2.c  .generated_files/flags/default/5928f1b1fa80954b47286c4ae46b9e5b26f847bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/uart2.o.d 
	@${RM} ${OBJECTDIR}/BIOS/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/uart2.c  -o ${OBJECTDIR}/BIOS/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/uart2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/89b7cc9c1a7ace0154ebe811dd2eaff117df8a9b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/FWS_Motion_PIR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/FWS_Motion_PIR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD4=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/FWS_Motion_PIR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/FWS_Motion_PIR.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/FWS_Motion_PIR.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
