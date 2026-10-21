#ifndef __PRODUCER_CONSUMER_H
#define __PRODUCER_CONSUMER_H

#define THREAD_TIME_SLICE 5
#define THREAD_PRIORITY 6
#define MAXSEM 5
static void producer_entry(void *parameter);
static void consumer_entry(void *parameter);
int producer_consumer(void);

#endif