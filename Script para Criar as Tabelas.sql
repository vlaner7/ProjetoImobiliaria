DELIMITER //
CREATE TABLE IMOVEL (CODIGO INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
					 ID_ATENDIMENTO INT(11) DEFAULT NULL,
					 DESCRICAO VARCHAR(50) DEFAULT NULL,
					 TIPO VARCHAR(2) DEFAULT NULL, -- CS = casa, AP = apartamento
					 VENDA_ALUGA VARCHAR(1) DEFAULT NULL, -- V = venda, A = aluguel
					 SITUACAO VARCHAR(1) DEFAULT NULL, -- D = dispnível, O = ocupado, V = vendido
					 BANHEIROS INT(2) DEFAULT NULL,
					 VALOR DECIMAL(13,2) DEFAULT NULL,
					 DATA_ANUNCIO DATETIME DEFAULT NULL,
					 NOME VARCHAR(50) DEFAULT NULL,
					 CPF VARCHAR(14) DEFAULT NULL,
					 STATUS_PAGAMENTO VARCHAR(1) DEFAULT NULL); -- Q = quitado, A = aberto

-------------------------------------------------------------------------------------------------------------------------

CREATE TABLE ATENDIMENTO (ID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
						  NOME VARCHAR(50) DEFAULT NULL,
						  CPF VARCHAR(14) DEFAULT NULL,
						  CODPRODUTO INT DEFAULT NULL,
						  DESCRICAOPROD VARCHAR(50) DEFAULT NULL,
						  TIPO VARCHAR(1) DEFAULT NULL, -- V = venda, A = aluguel
						  VALOR DECIMAL(13,2) DEFAULT NULL,
						  DTAATENDIMENTO DATETIME DEFAULT NULL,
						  SITUACAO VARCHAR(1) DEFAULT NULL, -- D = disponível, O = ocupado, V= vendido
						  DTAVENCIMENTO DATE DEFAULT NULL);

-------------------------------------------------------------------------------------------------------------------------

CREATE TABLE ATRIBUTO_FIXO (CODIGO VARCHAR(2) NOT NULL PRIMARY KEY,
							DESCRICAO VARCHAR(11) DEFAULT NULL);

-------------------------------------------------------------------------------------------------------------------------

CREATE TABLE CLIENTE (ID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
					  NOME VARCHAR(50) DEFAULT NULL,
					  CPF VARCHAR(14) DEFAULT NULL,
					  NASCIMENTO DATE DEFAULT NULL,
					  CIDADE VARCHAR(30) DEFAULT NULL,
					  ESTADO VARCHAR(30) DEFAULT NULL,
					  CEP VARCHAR(9) DEFAULT NULL,
					  ENDERECO VARCHAR(30) DEFAULT NULL,
					  BLOQFINANC VARCHAR(1) DEFAULT 'N');

-------------------------------------------------------------------------------------------------------------------------

CREATE TABLE ENDERECO (ID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
					   RUA VARCHAR(30) DEFAULT NULL,
					   NUMERO INT(11) DEFAULT NULL,
					   CIDADE VARCHAR(30) DEFAULT NULL,
					   ESTADO VARCHAR(15) DEFAULT NULL,
					   CEP VARCHAR(9) DEFAULT NULL);

-------------------------------------------------------------------------------------------------------------------------

CREATE TABLE LOG_DE_ERRO (ID INT(11) DEFAULT NULL,
						  NOME VARCHAR(50) DEFAULT NULL,
						  CPF VARCHAR(14) DEFAULT NULL,
						  CODPRODUTO INT(11) NOT NULL PRIMARY KEY,
						  DESCRICAOPROD VARCHAR(25) DEFAULT NULL,
						  VALOR DECIMAL(13,2) DEFAULT NULL,
						  DTAATENDIMENTO DATETIME DEFAULT NULL);

-------------------------------------------------------------------------------------------------------------------------
CREATE TABLE PRECO (CODPRODUTO INT(11) NOT NULL PRIMARY KEY,
					VALOR_ATUAL DECIMAL(13,2) DEFAULT NULL,
					VALOR_ANTIGO DECIMAL(13,2) DEFAULT NULL);

-------------------------------------------------------------------------------------------------------------------------

CREATE TABLE STATUS_PAGAMENTO (CODPRODUTO INT(11) NOT NULL PRIMARY KEY,
							   CPF VARCHAR(14) DEFAULT NULL,
							   NOME VARCHAR(50) DEFAULT NULL,
							   STATUS_PAGAMENTO VARCHAR(1) DEFAULT NULL);
//
DELIMITER ;