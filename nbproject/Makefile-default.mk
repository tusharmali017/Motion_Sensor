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
FINAL_IMAGE=${DISTDIR}/FWS_Motion_Sensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/FWS_Motion_Sensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/FWS_Motion_Sensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA606
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA606.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o: APP/Modbus/Lib/modbus_slave.c  .generated_files/flags/default/4d37a933653c9115d2f4de2ccbf488773311a233 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP/Modbus/Lib" 
	@${RM} ${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o.d 
	@${RM} ${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/Modbus/Lib/modbus_slave.c  -o ${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/Modbus/modbusdefines.o: APP/Modbus/modbusdefines.c  .generated_files/flags/default/fdc5092788f041ad2f74776447b7ab7d6c9fc5e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP/Modbus" 
	@${RM} ${OBJECTDIR}/APP/Modbus/modbusdefines.o.d 
	@${RM} ${OBJECTDIR}/APP/Modbus/modbusdefines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/Modbus/modbusdefines.c  -o ${OBJECTDIR}/APP/Modbus/modbusdefines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/Modbus/modbusdefines.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/app.o: APP/app.c  .generated_files/flags/default/c7b581f109588950aafdfdf78a155e362af5ceba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/app.o.d 
	@${RM} ${OBJECTDIR}/APP/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/app.c  -o ${OBJECTDIR}/APP/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/app.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/callback.o: APP/callback.c  .generated_files/flags/default/917691f13e67cc6b7ab6b5500ff59640d7f71a42 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/callback.o.d 
	@${RM} ${OBJECTDIR}/APP/callback.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/callback.c  -o ${OBJECTDIR}/APP/callback.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/callback.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/isr.o: APP/isr.c  .generated_files/flags/default/a3d1e1a0930eea996da33c3b9396b4b0467f58d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/isr.o.d 
	@${RM} ${OBJECTDIR}/APP/isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/isr.c  -o ${OBJECTDIR}/APP/isr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/isr.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/lcdslave.o: APP/lcdslave.c  .generated_files/flags/default/42430470501fa690bbc635a8d0dd7b574f2acc3a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/lcdslave.o.d 
	@${RM} ${OBJECTDIR}/APP/lcdslave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/lcdslave.c  -o ${OBJECTDIR}/APP/lcdslave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/lcdslave.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/sensor.o: APP/sensor.c  .generated_files/flags/default/940a5e5445a7d59a4cbe0e21ddad78718edbb137 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/sensor.o.d 
	@${RM} ${OBJECTDIR}/APP/sensor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/sensor.c  -o ${OBJECTDIR}/APP/sensor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/sensor.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/bios.o: BIOS/bios.c  .generated_files/flags/default/a97b00cec4bb6158c6bb6ca7916d9983795a7389 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/bios.o.d 
	@${RM} ${OBJECTDIR}/BIOS/bios.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/bios.c  -o ${OBJECTDIR}/BIOS/bios.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/bios.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/i2c1.o: BIOS/i2c1.c  .generated_files/flags/default/cb7a9ee229ef6c9d122f7dd4eafe1810a9c73073 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/i2c1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/i2c1.c  -o ${OBJECTDIR}/BIOS/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/i2c1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/i2c2.o: BIOS/i2c2.c  .generated_files/flags/default/19a34913c772c855500d19c2db903f7bfe923896 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/i2c2.o.d 
	@${RM} ${OBJECTDIR}/BIOS/i2c2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/i2c2.c  -o ${OBJECTDIR}/BIOS/i2c2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/i2c2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/pinmap.o: BIOS/pinmap.c  .generated_files/flags/default/d64115155926444e95849fa1451d8457a65bd8d3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/pinmap.o.d 
	@${RM} ${OBJECTDIR}/BIOS/pinmap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/pinmap.c  -o ${OBJECTDIR}/BIOS/pinmap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/pinmap.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/spi1.o: BIOS/spi1.c  .generated_files/flags/default/ee9dca18a65eb34cbfca29ef242559957d5ff4df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/spi1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/spi1.c  -o ${OBJECTDIR}/BIOS/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/spi1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/timer1.o: BIOS/timer1.c  .generated_files/flags/default/27da70b953b4fc23dc71e99d6ec21e9e6903aa2d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/timer1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/timer1.c  -o ${OBJECTDIR}/BIOS/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/timer1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/timer2.o: BIOS/timer2.c  .generated_files/flags/default/e03a377562ffb08f9990f18b78710c53de6e18c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/timer2.o.d 
	@${RM} ${OBJECTDIR}/BIOS/timer2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/timer2.c  -o ${OBJECTDIR}/BIOS/timer2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/timer2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/uart1.o: BIOS/uart1.c  .generated_files/flags/default/e8f92f96da299070ba936ec18416938189457c9a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/uart1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/uart1.c  -o ${OBJECTDIR}/BIOS/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/uart1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/uart2.o: BIOS/uart2.c  .generated_files/flags/default/fe6a08587547707a15ed1a3bd8b06968d76ec51c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/uart2.o.d 
	@${RM} ${OBJECTDIR}/BIOS/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/uart2.c  -o ${OBJECTDIR}/BIOS/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/uart2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/46948b3f75a8f8f6231f2559016017e616628ac3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o: APP/Modbus/Lib/modbus_slave.c  .generated_files/flags/default/daaa83b5fc261c023812822d454500a456f31d8b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP/Modbus/Lib" 
	@${RM} ${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o.d 
	@${RM} ${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/Modbus/Lib/modbus_slave.c  -o ${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/Modbus/Lib/modbus_slave.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/Modbus/modbusdefines.o: APP/Modbus/modbusdefines.c  .generated_files/flags/default/ce0705708ba251bba6bd5426b5d7dfb23162ed85 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP/Modbus" 
	@${RM} ${OBJECTDIR}/APP/Modbus/modbusdefines.o.d 
	@${RM} ${OBJECTDIR}/APP/Modbus/modbusdefines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/Modbus/modbusdefines.c  -o ${OBJECTDIR}/APP/Modbus/modbusdefines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/Modbus/modbusdefines.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/app.o: APP/app.c  .generated_files/flags/default/e69f469f062f7995cb8bd6755184590b85aa1d87 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/app.o.d 
	@${RM} ${OBJECTDIR}/APP/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/app.c  -o ${OBJECTDIR}/APP/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/app.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/callback.o: APP/callback.c  .generated_files/flags/default/9bdac449443232cd595f4e4ec444f6c65e318bb3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/callback.o.d 
	@${RM} ${OBJECTDIR}/APP/callback.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/callback.c  -o ${OBJECTDIR}/APP/callback.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/callback.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/isr.o: APP/isr.c  .generated_files/flags/default/fda3555adad96040da54f4441e6ba0383590b53b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/isr.o.d 
	@${RM} ${OBJECTDIR}/APP/isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/isr.c  -o ${OBJECTDIR}/APP/isr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/isr.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/lcdslave.o: APP/lcdslave.c  .generated_files/flags/default/9f151f3d2a2c1d20c5a2b8822241b20f404baf11 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/lcdslave.o.d 
	@${RM} ${OBJECTDIR}/APP/lcdslave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/lcdslave.c  -o ${OBJECTDIR}/APP/lcdslave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/lcdslave.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/sensor.o: APP/sensor.c  .generated_files/flags/default/fa97e3c015de3366349f4648ec7a0e6079d985aa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/sensor.o.d 
	@${RM} ${OBJECTDIR}/APP/sensor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/sensor.c  -o ${OBJECTDIR}/APP/sensor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/sensor.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/bios.o: BIOS/bios.c  .generated_files/flags/default/31a0279f4b6def8abff362c31a697a5f6574ab79 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/bios.o.d 
	@${RM} ${OBJECTDIR}/BIOS/bios.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/bios.c  -o ${OBJECTDIR}/BIOS/bios.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/bios.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/i2c1.o: BIOS/i2c1.c  .generated_files/flags/default/d66fad7794632eff336d1e1a7ffa585e8b736bd4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/i2c1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/i2c1.c  -o ${OBJECTDIR}/BIOS/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/i2c1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/i2c2.o: BIOS/i2c2.c  .generated_files/flags/default/60b8dd092e3159d2b18b4b5d82a26baf45a53675 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/i2c2.o.d 
	@${RM} ${OBJECTDIR}/BIOS/i2c2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/i2c2.c  -o ${OBJECTDIR}/BIOS/i2c2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/i2c2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/pinmap.o: BIOS/pinmap.c  .generated_files/flags/default/e4784c3387c54669b123730452c133be5030a117 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/pinmap.o.d 
	@${RM} ${OBJECTDIR}/BIOS/pinmap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/pinmap.c  -o ${OBJECTDIR}/BIOS/pinmap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/pinmap.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/spi1.o: BIOS/spi1.c  .generated_files/flags/default/1a7b11d6304e69959fd1ba66f5b18aa27d855761 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/spi1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/spi1.c  -o ${OBJECTDIR}/BIOS/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/spi1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/timer1.o: BIOS/timer1.c  .generated_files/flags/default/8374b01f7699710676aa4acf4f06b8be438ba5b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/timer1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/timer1.c  -o ${OBJECTDIR}/BIOS/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/timer1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/timer2.o: BIOS/timer2.c  .generated_files/flags/default/32871491087f951db107b41516922f135c5640d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/timer2.o.d 
	@${RM} ${OBJECTDIR}/BIOS/timer2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/timer2.c  -o ${OBJECTDIR}/BIOS/timer2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/timer2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/uart1.o: BIOS/uart1.c  .generated_files/flags/default/ae6dfb61a69e3845885e605b29939a390f1bd76b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/uart1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/uart1.c  -o ${OBJECTDIR}/BIOS/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/uart2.o: BIOS/uart2.c  .generated_files/flags/default/132bed1c5434c19f0e3acff5b20175a8eef9ec44 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/uart2.o.d 
	@${RM} ${OBJECTDIR}/BIOS/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/uart2.c  -o ${OBJECTDIR}/BIOS/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/uart2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/775a4f40597127735bb1126ff0b138850ecc1cce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
${DISTDIR}/FWS_Motion_Sensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/FWS_Motion_Sensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD4=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/FWS_Motion_Sensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/FWS_Motion_Sensor.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/FWS_Motion_Sensor.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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
