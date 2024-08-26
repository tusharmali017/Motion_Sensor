/* 
 * File:   app.h
 * Author: tushar.mali
 *
 * Created on 5 September, 2023, 11:10 AM
 */

#ifndef APP_H
#define	APP_H


#include "../BIOS/bios.h"
#include "D6TSensor.h"
#include "isr.h"
#include <bits/alltypes.h>
#include "Modbus/Lib/modbus_slave.h"
#include "callback.h"
#include "lcdslave.h"



#ifdef	__cplusplus
extern "C" {
#endif

    void runApp(void);


#ifdef	__cplusplus
}
#endif

#endif	/* APP_H */

