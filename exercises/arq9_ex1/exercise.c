#include "def_pinos.h"
#include "config.c"
#include "stdio.h"

#define lig 1
#define des 0
#define DB P3
#define RS P3_0
#define E P3_1
#define NI 0 //NIBLE
#define BY 1 //BYTE
#define CO 0 //COMANDO
#define DA 1 //DADO

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


void delay_us (unsigned int t){
		TMOD &= ~0x03;
		TMOD |= 0x02;
		TL0 = 0x00;
		TH0 = 0xE7;
		for(t; t>0; t--){
			while(TF0==0);
			TF0 = 0;
		}
}


void esc_LCDan(unsigned char dado, __bit nb, __bit cd){
	unsigned char aux;
	RS = cd;
	NOP();
	E = 1;
	aux = (dado>>2) & 0xfc;
	aux = aux | 0x02 | cd;
	DB = aux;
	NOP();
	E = 0;
	if(nb){
		delay_us(1);
		E = 1;
		aux = (dado<<2) & 0xfc;
		aux = aux | 0x02 | cd;
		DB = aux;
		NOP();
		E = 0;
	}
	if(dado<4 && cd==CO) delay_us(1520);
	else delay_us(43);
}

void Ini_LCDan(void){
	E = 0;
	delay_ms(20);
	esc_LCDan(0x30,NI,CO);
	delay_ms(5);
	esc_LCDan(0x30,NI,CO);
	delay_us(105);
	esc_LCDan(0x30,NI,CO);
	esc_LCDan(0x20,NI,CO);
	esc_LCDan(0x28,BY,CO);
	esc_LCDan(0x08,BY,CO);
	esc_LCDan(0x01,BY,CO);
	esc_LCDan(0x06,BY,CO);
	esc_LCDan(0x0C,BY,CO);
}


void putchar(char c) {
	if(c == '\t') { // Top
		esc_LCDan(0x80, BY, CO);
	}
	else if (c == '\b') { // Button
		esc_LCDan(0xC0, BY, CO);
	}
	else {
		esc_LCDan(c, BY, DA);
	}
}



void main(void) {
	float floatVar = 3.1415;
	int intVar = 13;
	
	Init_Device();
	SFRPAGE=LEGACY_PAGE;
	Ini_LCDan();

	printf_fast_f("\tABC \b%f %d", floatVar, intVar);
	while(1);
}
