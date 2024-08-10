/* 
 * File:   callback.h
 * Author: tushar.mali
 *
 * Created on 4 June, 2024, 4:48 PM
 */

#ifndef CALLBACK_H
#define	CALLBACK_H

#include "../BIOS/bios.h"
#include "isr.h"
#include "Modbus/Lib/modbus_slave.h"

#ifdef	__cplusplus
extern "C" {
#endif

    extern bool gbFlagTriggerSlaveCharDelay;
    void initCallback(void);
    void tmr1Callback(void);
    void uart2RxCallback(void);


#ifdef	__cplusplus
}
#endif

#endif	/* CALLBACK_H */

