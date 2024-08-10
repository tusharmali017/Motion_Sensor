/* 
 * File:   sensor.h
 * Author: tushar.mali
 *
 * Created on 4 June, 2024, 5:36 PM
 */

#ifndef SENSOR_H
#define	SENSOR_H

#include "../BIOS/bios.h"

#ifdef	__cplusplus
extern "C" {
#endif

    typedef struct {
        int16_t iMotionDetected;
    } SENSOR_DATA;

    extern SENSOR_DATA sensorData;
    SENSOR_DATA *getSensorDataObj(void);

    void populateSensorData();


#ifdef	__cplusplus
}
#endif

#endif	/* SENSOR_H */

