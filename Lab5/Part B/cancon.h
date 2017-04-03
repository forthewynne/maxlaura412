#ifndef CANCON_H
#define CANCON_H

void Init_CanBus_Controller0(void);
void Init_CanBus_Controller1(void);
void CanBus0_Transmit(unsigned char msg_num);
void CanBus1_Transmit(void);
void CanBus0_Receive(void);
void CanBus1_Receive(void);
void delay(void);
void CanBusTest(void);

#endif