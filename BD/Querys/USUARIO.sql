CREATE TABLE USUARIO (
	ID integer not null, 
	NOME varchar(60),
	LOGIN varchar(16), 
	SENHA varchar(60), 
	ID_NIVEL integer, 
	
	CONSTRAINT pk_usuario PRIMARY KEY(ID),
	
	CONSTRAINT uk_login UNIQUE(login),
	
	CONSTRAINT fk_usuario_nivel FOREIGN KEY (id_nivel) REFERENCES NIVEL (ID)
	
)