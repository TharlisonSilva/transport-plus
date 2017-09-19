CREATE TABLE "VEICULO" (
	ID integer not null, 
	MARCA 			varchar(20), 
	MODELO			varchar(20), 
	ANO 			integer, 
	COR 			varchar(20), 
	PLACA 			varchar(20), 
	RNTRC 			varchar(20), 
	RENAVAN 		integer, 
	CAPACIDADE_KG 	float, 
	KM_ATUAL		float,
	
	CONSTRAINT pk_veiculo PRIMARY KEY(ID),
	
	CONSTRAINT uk_renavan UNIQUE KEY(RENAVAN));
