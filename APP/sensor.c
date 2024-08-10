#include "sensor.h"

SENSOR_DATA sensorData;
SENSOR_DATA *getSensorDataObj(void);


void populateSensorData()
{
    if (DI_PIR_MOTION_SENSOR == 1)
    {
        DO_TEST_LED = 0;
        sensorData.iMotionDetected = 1;
    }
    else
    {
        DO_TEST_LED = 1;
        sensorData.iMotionDetected = 0;
    }
}


SENSOR_DATA *getSensorDataObj(void)
{
    return &sensorData;
}
