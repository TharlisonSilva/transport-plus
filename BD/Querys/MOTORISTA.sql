CREATE TABLE MOTORISTA (
	ID integer not null, 
	NOME varchar(60), 
	TELEFONE varchar(20), 
	CELULAR varchar(20), 
	ENDERECO varchar(120), 
	BAIRRO varchar(60), 
	ID_CIDADE integer, 
	CEP varchar(20), 
	CPF varchar(11), 
	RG varchar(12), 
	ORGAO_EXPEDIDOR varchar(10), 
	DATA_EXPEDICAO date, 
	DATA_NASCIMENTO date, 
	ID_CIDADE_NASCIMENTO integer, 
	CNH_NUMERO_REGISTRO varchar(12), 
	CNH_CATEGORIA varchar(10), 
	CNH_DATA_VALIDADE date,
	
	CONSTRAINT fk_motorista PRIMARY KEY(ID),
	
	CONSTRAINT fk_motorista_cidade FOREIGN KEY ID_CIDADE REFERENCES CIDADE (ID),
	
	CONSTRAINT fk_motorista_cidade_nascimento FOREIGN KEY ID_CIDADE_NASCIMENTO REFERENCES CIDADE (ID)
)
GO