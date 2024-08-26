/* 
 * File:   D6TSensor.h
 * Author: tushar.mali
 *
 * Created on 22 July, 2024, 10:48 AM
 */

#ifndef D6TSENSOR_H
#define	D6TSENSOR_H

#include "../BIOS/bios.h"


#define D6T_SLAVE_ADDR     0x0A

#ifdef	__cplusplus
extern "C" {
#endif

    extern uint8_t readbuff[64];
    extern int tPTAT;
    extern int tP[16];
    extern int tPEC;

    void D6T_getvalue();
    bool D6T_checkPEC(uint8_t buf[], int n);
    uint8_t calc_crc(uint8_t data);


#ifdef	__cplusplus
}
#endif

#endif	/* D6TSENSOR_H */

