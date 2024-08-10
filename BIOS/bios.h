/* 
 * File:   bios.h
 * Author: tushar.mali
 *
 * Created on 5 September, 2023, 11:10 AM
 */

#ifndef BIOS_H
#define	BIOS_H

#include "../projectdefines.h"
#include "pinmap.h"
#include "timer1.h"
#include "timer2.h"
#include "uart1.h"
#include "uart2.h"
#include "i2c1.h"
#include "i2c2.h"
#include "spi1.h"

#ifdef	__cplusplus
extern "C" {
#endif

    void initBIOS(void);


#ifdef	__cplusplus
}
#endif

#endif	/* BIOS_H */

