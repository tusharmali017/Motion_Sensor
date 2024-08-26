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

    typedef struct {
        int16_t tPTAT;
        int16_t tP0;
        int16_t tP1;
        int16_t tP2;
        int16_t tP3;
        int16_t tP4;
        int16_t tP5;
        int16_t tP6;
        int16_t tP7;
        int16_t tP8;
        int16_t tP9;
        int16_t tP10;
        int16_t tP11;
        int16_t tP12;
        int16_t tP13;
        int16_t tP14;
        int16_t tP15;
        int16_t tPEC;
        int16_t avgTemp;
    } SENSOR_DATA;

    extern SENSOR_DATA sensorData;
    SENSOR_DATA *getSensorDataObj(void);

    extern uint8_t readbuff[64];
    extern int tPTAT;
    extern int tP[16];
    extern int tPEC;

    void populateSensorData();
    void D6T_getvalue();
    bool D6T_checkPEC(uint8_t buf[], int n);
    uint8_t calc_crc(uint8_t data);


#ifdef	__cplusplus
}
#endif

#endif	/* D6TSENSOR_H */

