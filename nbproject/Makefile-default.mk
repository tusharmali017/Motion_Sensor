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
SOURCEFILES_QUOTED_IF_SPACED=APP/app.c APP/D6TSensor.c BIOS/bios.c BIOS/i2c1.c BIOS/i2c2.c BIOS/pinmap.c BIOS/spi1.c BIOS/timer1.c BIOS/timer2.c BIOS/uart1.c BIOS/uart2.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/APP/app.o ${OBJECTDIR}/APP/D6TSensor.o ${OBJECTDIR}/BIOS/bios.o ${OBJECTDIR}/BIOS/i2c1.o ${OBJECTDIR}/BIOS/i2c2.o ${OBJECTDIR}/BIOS/pinmap.o ${OBJECTDIR}/BIOS/spi1.o ${OBJECTDIR}/BIOS/timer1.o ${OBJECTDIR}/BIOS/timer2.o ${OBJECTDIR}/BIOS/uart1.o ${OBJECTDIR}/BIOS/uart2.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/APP/app.o.d ${OBJECTDIR}/APP/D6TSensor.o.d ${OBJECTDIR}/BIOS/bios.o.d ${OBJECTDIR}/BIOS/i2c1.o.d ${OBJECTDIR}/BIOS/i2c2.o.d ${OBJECTDIR}/BIOS/pinmap.o.d ${OBJECTDIR}/BIOS/spi1.o.d ${OBJECTDIR}/BIOS/timer1.o.d ${OBJECTDIR}/BIOS/timer2.o.d ${OBJECTDIR}/BIOS/uart1.o.d ${OBJECTDIR}/BIOS/uart2.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/APP/app.o ${OBJECTDIR}/APP/D6TSensor.o ${OBJECTDIR}/BIOS/bios.o ${OBJECTDIR}/BIOS/i2c1.o ${OBJECTDIR}/BIOS/i2c2.o ${OBJECTDIR}/BIOS/pinmap.o ${OBJECTDIR}/BIOS/spi1.o ${OBJECTDIR}/BIOS/timer1.o ${OBJECTDIR}/BIOS/timer2.o ${OBJECTDIR}/BIOS/uart1.o ${OBJECTDIR}/BIOS/uart2.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=APP/app.c APP/D6TSensor.c BIOS/bios.c BIOS/i2c1.c BIOS/i2c2.c BIOS/pinmap.c BIOS/spi1.c BIOS/timer1.c BIOS/timer2.c BIOS/uart1.c BIOS/uart2.c main.c



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

MP_PROCESSOR_OPTION=24FJ1024GB610
MP_LINKER_FILE_OPTION=,--script=p24FJ1024GB610.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/APP/app.o: APP/app.c  .generated_files/flags/default/9aeefe2d0d96ffd09cb996a3414704503ebd97cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/app.o.d 
	@${RM} ${OBJECTDIR}/APP/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/app.c  -o ${OBJECTDIR}/APP/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/app.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/D6TSensor.o: APP/D6TSensor.c  .generated_files/flags/default/7cc397b0a6c312ff9b170382793e6d40e1208041 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/D6TSensor.o.d 
	@${RM} ${OBJECTDIR}/APP/D6TSensor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/D6TSensor.c  -o ${OBJECTDIR}/APP/D6TSensor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/D6TSensor.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/bios.o: BIOS/bios.c  .generated_files/flags/default/8f3f549ca77ed2b60021b3d0131789f2896d3830 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/bios.o.d 
	@${RM} ${OBJECTDIR}/BIOS/bios.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/bios.c  -o ${OBJECTDIR}/BIOS/bios.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/bios.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/i2c1.o: BIOS/i2c1.c  .generated_files/flags/default/58f1f79b9e1ed3527690928b3f9c08f20aff392f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/i2c1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/i2c1.c  -o ${OBJECTDIR}/BIOS/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/i2c1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/i2c2.o: BIOS/i2c2.c  .generated_files/flags/default/2dff86e5d87aa5ef04d31bc5f67352eaef30e297 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/i2c2.o.d 
	@${RM} ${OBJECTDIR}/BIOS/i2c2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/i2c2.c  -o ${OBJECTDIR}/BIOS/i2c2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/i2c2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/pinmap.o: BIOS/pinmap.c  .generated_files/flags/default/6256718a2b81549a7cd7fb3872f48687b36b350b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/pinmap.o.d 
	@${RM} ${OBJECTDIR}/BIOS/pinmap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/pinmap.c  -o ${OBJECTDIR}/BIOS/pinmap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/pinmap.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/spi1.o: BIOS/spi1.c  .generated_files/flags/default/2ca15a11cddc246069ac937e1e51c5873417f242 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/spi1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/spi1.c  -o ${OBJECTDIR}/BIOS/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/spi1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/timer1.o: BIOS/timer1.c  .generated_files/flags/default/dc522e3e61fa9514ac7652a5b9539a87b39e23b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/timer1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/timer1.c  -o ${OBJECTDIR}/BIOS/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/timer1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/timer2.o: BIOS/timer2.c  .generated_files/flags/default/aad0009c0707f4ae9b82709925177a5fa89f3f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/timer2.o.d 
	@${RM} ${OBJECTDIR}/BIOS/timer2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/timer2.c  -o ${OBJECTDIR}/BIOS/timer2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/timer2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/uart1.o: BIOS/uart1.c  .generated_files/flags/default/eeb09e3a22b21963bc847bd17b9df54a5201c7c9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/uart1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/uart1.c  -o ${OBJECTDIR}/BIOS/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/uart2.o: BIOS/uart2.c  .generated_files/flags/default/dfced759bcaf54ff278ec09a21a14519e2f9641e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/uart2.o.d 
	@${RM} ${OBJECTDIR}/BIOS/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/uart2.c  -o ${OBJECTDIR}/BIOS/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/uart2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/f3f8d94e1651d0e466fb6a9779ab5bde49bdab1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/APP/app.o: APP/app.c  .generated_files/flags/default/e69f469f062f7995cb8bd6755184590b85aa1d87 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/app.o.d 
	@${RM} ${OBJECTDIR}/APP/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/app.c  -o ${OBJECTDIR}/APP/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/app.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/D6TSensor.o: APP/D6TSensor.c  .generated_files/flags/default/5823cc2b40857696529cb8ab686d6571adaa071b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/D6TSensor.o.d 
	@${RM} ${OBJECTDIR}/APP/D6TSensor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/D6TSensor.c  -o ${OBJECTDIR}/APP/D6TSensor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/D6TSensor.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/FWS_Motion_Sensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
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
