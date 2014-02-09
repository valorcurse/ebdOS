/*
 * schedule.h
 *
 *  Created on: 12 nov. 2013
 *      Author: VersD @ hr.nl
 *
 */

#ifndef SCHEDULE_H_
#define SCHEDULE_H_

#include "task.h"

#define MAIN_RETURN 	0xFFFFFFF9 //Tells the handler to return using the MSP
#define THREAD_RETURN 	0xFFFFFFFD //Tells the handler to return using the PSP

//The ISR functions
void SystickISR(void);
void PendSVISR(void);

//The Scheduler
void schedule(void);
task * getNextTask(void);

#endif /* SCHEDULE_H_ */
