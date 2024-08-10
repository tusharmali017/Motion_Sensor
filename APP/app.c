#include "app.h"

static void appTasks();

typedef enum
{
    APP_STATE_INIT,
    APP_STATE_IDLE,
    APP_STATE_POPULATE_DATA,
    APP_STATE_UPDATE_LCD
} APP_STATE;

APP_STATE appState = APP_STATE_INIT;

static void initApp()
{
    initCallback();
    initModbusSlave(2, LCDUpdateSingleRegister, LCDUpdateHoldingRegisters, LCDGetInputRegisters, LCDGetHoldingRegisters, UART2WriteData);
}

void runApp(void)
{
    initApp();

    while (1)
    {
        modbusSlaveTasks();
        appTasks();
    }
}

/* EXECUTE APP TASKS WHICH POPULATES ENGINE AND VEHICLE DATA AND DISPLAYS ON LCD DISPLAY */
static void appTasks()
{
    switch (appState)
    {
        case APP_STATE_INIT:
            appState = APP_STATE_IDLE;
            break;

        case APP_STATE_IDLE:
            appState = APP_STATE_POPULATE_DATA;
            break;

        case APP_STATE_POPULATE_DATA:
            populateSensorData();
            appState = APP_STATE_UPDATE_LCD;
            break;

        case APP_STATE_UPDATE_LCD:
            //Update all the Populated data to LCD display
            LCDUpdateInputReg(getSensorDataObj());
            appState = APP_STATE_IDLE;
            break;
    }
}

