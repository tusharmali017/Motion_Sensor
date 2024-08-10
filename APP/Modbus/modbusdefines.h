/* 
 * File:   modbusdefines.h
 * Author: Vinit Bhamburdekar
 *
 * Created on 5 May, 2021, 12:41 PM
 */

#ifndef MODBUSDEFINES_H
#define	MODBUSDEFINES_H

#include <stdbool.h>
#include <string.h>
#include <xc.h>
#include <stdbool.h>

#ifdef	__cplusplus
extern "C" {
#endif

#define MODBUS_STANDALONE_MASTER

#define MODBUS_CRC_ERROR        -1
#define MODBUS_INVALID_ID       -2
#define MODBUS_INVALID_FC       -3
#define MODBUS_INVALID_PACKET   -4

#define MODBUS_INDEX_ID    0 //earlier it was 0
#define MODBUS_INDEX_FC    1

#define MODBUS_FC_WRITE_MULTIPLE_COILS   0x0F
#define MODBUS_FC_READ_INPUT_REGS        0x04
#define MODBUS_FC_READ_HOLD_REGS         0x03
#define MODBUS_FC_WRITE_SINGLE_HOLD_REG  0x06
#define MODBUS_FC_WRITE_MULT_HOLD_REG    0x10

    uint16_t getCRC16(volatile uint8_t *puchMsg, uint16_t usDataLen);
    bool isCRC16OK(uint8_t *data, uint16_t iDataLen);

#ifdef	__cplusplus
}
#endif

#endif	/* MODBUSDEFINES_H */

