#define NOP4() NOP();NOP();NOP();NOP()
#define NOP8() NOP4();NOP4()
#define NOP12() NOP8();NOP4()


void delay_ms(unsigned int t){
	TMOD |= 0x01;
	TMOD &= ~0x02;
	for(;t>0;t--){
		WDTCN = 0xa5;
		TR0 = 0;
		TF0 = 0;
		TL0 = 0x58;
		TH0 = 0x9E;
		TR0 = 1;
		while(TF0 == 0);
	}	
}

void delay_us(unsigned int t){
	TMOD |= 0X02;
	TMOD &= ~0X01;
	TR0 = 0;
	TF0 = 0;
	TL0 = 0xE7;
	TH0 = 0xE7;
	TR0 = 1;
	for(;t>0;t--){
		WDTCN = 0xa5;
		while(TF0 == 0);
		TF0 = 0;
	}	

}
