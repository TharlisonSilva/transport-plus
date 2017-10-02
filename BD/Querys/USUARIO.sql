CREATE TABLE USUARIO (
	ID integer not null, 
	NOME varchar(60),
	LOGIN varchar(16), 
	SENHA varchar(60), 
	ID_PAPEL integer NOT NULL, 
	
	CONSTRAINT pk_usuario PRIMARY KEY(ID),
	
	CONSTRAINT uk_login UNIQUE(login),
	
	CONSTRAINT fk_usuario_PAPEL FOREIGN KEY (id_PAPEL) REFERENCES PAPEL (ID)
	
);

DROP TABLE USUARIO;