CREATE TABLE empresa (
	ID 				integer not null, 
	NOME 			varchar(60), 
	ENDERECO	 	varchar(60), 
	BAIRRO 			varchar(60), 
	INSC_ESTADUAL 	varchar(20),
	
	CONSTRAINT pk_empresa primary key(id)
);