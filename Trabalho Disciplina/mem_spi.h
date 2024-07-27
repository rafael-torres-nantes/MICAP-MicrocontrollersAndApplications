#define LO 0
#define HI 1
#define ESQ 0
#define DIR 1
#define CO 0
#define DA 1

// define usado pelo barramento SPI
#define SCK P0_2
#define MISO P0_3
#define MOSI P0_4
#define HOLD P2_2
#define CS P2_3

volatile unsigned int end_fim_ram = 0;

void esc_RAM_SPI(unsigned int end, unsigned char dado){
	unsigned char end_l = end, end_h = end>>8;

	CS = LO;

	SPI0DAT = 0x02;
	while(TXBMT==0); // Espera o shift dos 16 bits serem shiftados

	SPI0DAT = end_h;
	while(TXBMT==0);

	SPI0DAT = end_l;
	while(TXBMT==0);

	SPI0DAT = dado;
	while(TXBMT==0);

	SPIF = 0; // Reseta valor para receber bit flag
	while(SPIF==0); // Aguarda a sinalizacao do bit flag do fim da instrucao
	SPIF = 0; // Reseta valor para receber bit flag

	CS = 1;
}

unsigned char le_RAM_SPI(unsigned int end){
	unsigned char end_l = end, end_h = end>>8;

	CS = LO;

	SPI0DAT = 0x03; 
	while(TXBMT==0); // Espera o shift dos 16 bits serem shiftados

	SPI0DAT = end_h;
	while(TXBMT==0);

	SPI0DAT = end_l;
	while(TXBMT==0);

	SPI0DAT = 0x00; // Garantir que o dado foi zerado. Limpar a memoria de dados flash
	while(TXBMT==0);

	SPIF = 0;
	while(SPIF==0);
	SPIF = 0;

	CS = 1;

	return SPI0DAT;
}

unsigned char verifica_RAM_SPI(void){
	// Testa o funcionamento da memoria

	unsigned int i;
	unsigned char aux;

	for(i=0; i<8192; i++){
		esc_RAM_SPI(i, 170);
		aux = le_RAM_SPI(i);

		if(aux != 170){
			printf_fast_f("\x02 ERRO: mem=%05d",i);
			return 0; //erro em um endereco
		}
		printf_fast_f("\x02 i = %05d",i);
	}

	return 1; //tudo certo
}