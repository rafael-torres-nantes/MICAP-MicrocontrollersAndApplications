//Guilherme Brandao e Rafael Torres
#include "config.c"
#include "def_pinos.h"

#define ON 1
#define OFF 0

volatile unsigned char value_1, value_2;
volatile __bit c = 0;

void delay_ms(unsigned int t){
	TMOD|=0x01;
	TMOD &= ~0X02;
	for(; t>0; t--){
		TR0=0;
		TF0=0;
		TL0=0x58;
		TL0=0x9e;
		TR0=1;
		while(TF0==0);
	}
}
								 
__code unsigned char esc_disp[10]={0x7E, 0x30, 0x6D, 0x79, 0x33, 0x5B, 0x5F, 0x70, 0x7F, 0x7B, 0x00, 0x4F};  //tela cheia 91

void esc_disp7(unsigned char alg, char dp) {

	P0 = esc_disp[alg];

	if(dp == 0)
		P0_7 = des;
	else
		P0_7 = lig;
}

void esc_disp7s(unsigned int num_vis){
	value_1 = num_vis / 10; 
	value_2 = num_vis % 10;
}

void funcao_isr2(void) __interrupt 5{

	switch(c) {
		case 0:
			P1_1 = ON;
			esc_disp7(value_1, 0);
			P1_0 = OFF;
			c = 1;
			break;
		
		case 1:
			P1_0 = ON;
			esc_disp7(value_2, 0);
			P1_1 = OFF;
			c = 0;
			break;
	}
		
	TF2 = 0;
}

void main(void){
	
	Init_Device();
	SFRPAGE=LEGACY_PAGE;
	while(1)
	{
		unsigned int i = 99;
		for(; i > 0; i--) 
		{
			esc_disp7s(i);
			delay_ms(100);
		}
	}
}