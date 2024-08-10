/* 
 * File:   pinmap.h
 * Author: tushar.mali
 *
 * Created on 3 February, 2023, 10:40 AM
 */

#ifndef PINMAP_H
#define	PINMAP_H

#include "../projectdefines.h"

#define DO_TEST_LED LATFbits.LATF0
#define DO_BUZZER LATDbits.LATD0
#define DO_SPI_CS LATCbits.LATC14
#define DO_SPARE2 LATEbits.LATE1

#define DI_PIR_MOTION_SENSOR PORTDbits.RD11


#ifdef	__cplusplus
extern "C" {
#endif

    void initPinmap(void);


#ifdef	__cplusplus
}
#endif

#endif	/* PINMAP_H */

