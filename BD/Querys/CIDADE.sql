CREATE TABLE CIDADE (
	ID 			integer not null, 
	NOME 		varchar(60), 
	ID_ESTADO 	integer,
	
	CONSTRAINT pk_cidade PRIMARY KEY(ID),
	
	CONSTRAINT fk_cidade_estado FOREIGN KEY ID_ESTADO REFERENCES ESTADO (ID));