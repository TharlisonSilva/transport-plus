CREATE TABLE "CLIENTE" (
	ID integer not null, 
	CPF_CNPJ varchar(20), 
	NOME varchar(60), 
	ENDERECO varchar(120), 
	BAIRRO varchar(60), 
	ID_CIDADE integer, 
	CEP varchar(20),
	
	CONSTRAINT pk_cliente PRIMARY KEY(ID),
	
	CONSTRAINT fk_cliente_cidade FOREIGN KEY (id_cidade) REFERENCES CIDADE (ID));
GO