CREATE TABLE OS (
	ID 						integer not null, 
	OS_NUMERO 				integer,
	OS_SERIE 				integer,
	ID_EMPRESA				integer default 1,
	
	NUMERO_DE_VOLUMES 		integer,
	
	CEP_DESTINO 			varchar(20),
	ENDERECO_DESTINO 		varchar(60), 
	BAIRRO_DESTINO 			varchar(60),  
	ID_CIDADE_DESTINO 		integer,  
	
	PESO 					float,
	ID_CLIENTE				integer, 
	ID_NOME_MOTORISTA 		integer,
	
	STATUS 					integer,
	
	CONSTRAINT pk_os primary key(id),
	
	CONSTRAINT fk_os_empresa FOREIGN KEY ID_EMPRESA REFERENCES EMPRESA (ID),
	
	CONSTRAINT fk_os_cidade_destino FOREIGN KEY (id_cidade_destino) REFERENCES CIDADE (ID),
	
	CONSTRAINT fk_os_cliente FOREIGN KEY ID_CLIENTE REFERENCES CLIENTE (ID),
	
	CONSTRAINT fk_os_motorista FOREIGN KEY ID_NOME_MOTORISTA REFERENCES MOTORISTA (ID));
GO