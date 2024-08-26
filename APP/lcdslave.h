/* 
 * File:   lcdslave.h
 * Author: tushar.mali
 *
 * Created on 10 June, 2023, 12:43 PM
 */

#ifndef LCDSLAVE_H
#define	LCDSLAVE_H

#include "../BIOS/bios.h"
#include "D6TSensor.h"


/***************** MACROS DEFINTIONS ******************************************/

#define LCD_TOTAL_HOLDING_REG 1
#define LCD_TOTAL_INPUT_REG 18

/******************************************************************************/


#ifdef	__cplusplus
extern "C" {
#endif

    void LCDUpdateInputReg();
    void LCDGetInputRegisters(uint16_t iStartAddress, uint16_t iQty, uint8_t *buffer, uint16_t *bufferIndex);
    void LCDGetHoldingRegisters(uint16_t iStartAddress, uint16_t iQty, uint8_t *buffer, uint16_t *bufferIndex);
    void LCDUpdateHoldingRegisters(uint16_t iStartAddress, uint16_t iQty, uint8_t *pValues);
    void LCDUpdateSingleRegister(uint16_t iAddress, uint16_t iValue);

#ifdef	__cplusplus
}
#endif

#endif	/* LCDSLAVE_H */

