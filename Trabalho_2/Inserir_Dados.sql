USE TRABALHO_P
GO

--Tabela Funcionario
INSERT INTO Funcionario(ID, NOME, APELIDO, TELEFONE, ENDERECO_MORADA, ENDERECO_LOCALIDADE, ENDERECO_CODIGO_POSTAL)
VALUES (7856, 'Manuel', 'Fernandes', '913256789', 'Rua das Maças', 'Pedrouços', '4567-922')

INSERT INTO Funcionario(ID, NOME, APELIDO, TELEFONE, ENDERECO_MORADA, ENDERECO_LOCALIDADE, ENDERECO_CODIGO_POSTAL)
VALUES (7246, 'Tartaruga', 'Genial', '913223489', 'Rua dos Pessegos', 'Alfarroba', '4567-232')

INSERT INTO Funcionario(ID, NOME, APELIDO, TELEFONE, ENDERECO_MORADA, ENDERECO_LOCALIDADE, ENDERECO_CODIGO_POSTAL)
VALUES (7776, 'Inês', 'Saraiva', '913123789', 'Rua das Tartes', 'São João', '4789-222')


--Tabela Freguesia
INSERT INTO Freguesia (Codigo, Area, Populacao)
VALUES (123456, 12000.0, 7500)

INSERT INTO Freguesia (Codigo, Area, Populacao)
VALUES (223456, 13000.0, 8000)

INSERT INTO Freguesia (Codigo, Area, Populacao)
VALUES (334567, 15000.0, 10000)



--Tabela Centro_Medico
INSERT INTO Centro_Medico (ID, Nome)
VALUES (23, 'Centro Hospitalar do Tâmega e Sousa')

INSERT INTO Centro_Medico (ID, Nome)
VALUES (24, 'Centro Hospitalar Universitário São João')

INSERT INTO Centro_Medico (ID, Nome)
VALUES (25, 'Centro Hospitalar Universitário de Santo António')


--Tabela Centro_Saude

INSERT INTO Centro_Saude (ID_CS, Nome, Enfermagem)
VALUES (23, 'Unidade de Saúde Familiar', 'Sim')

INSERT INTO Centro_Saude(ID_CS, Nome, Enfermagem)
VALUES (26, 'Unidade de Saúde Familiar Porto Centro', 'Sim')

INSERT INTO Centro_Saude(ID_CS, Nome, Enfermagem)
VALUES (28, 'Centro de Saúde de Campanhã', 'Sim')


--Tabela Hospital
INSERT INTO Hospital (ID_H, Especialidade)
VALUES (23, 'Cardiologia')

INSERT INTO Hospital (ID_H, Especialidade)
VALUES (24, 'Cirurgia Geral')

INSERT INTO Hospital (ID_H, Especialidade)
VALUES (25, 'Cirurgia Pediátrica')


--Tabela Hospital Especialidades
INSERT INTO Hospital_Especialidades(Codigo_Especialidade, Nome_Especialidade)
VALUES (29, 'Cardiologia')

INSERT INTO Hospital_Especialidades(Codigo_Especialidade, Nome_Especialidade)
VALUES (30, 'Cirurgia Geral')

INSERT INTO Hospital_Especialidades(Codigo_Especialidade, Nome_Especialidade)
VALUES (40, 'Cirurgia Pediátrica')

--Tabela Cidade
INSERT INTO Cidade(ID, NOME, AREA, LOCALIZACAO_PAIS, LOCALIZACAO_CONTINENTE)
VALUES (4, 'Porto', 60000, 'Portugal', 'Europa')

INSERT INTO Cidade(ID, NOME, AREA, LOCALIZACAO_PAIS, LOCALIZACAO_CONTINENTE)
VALUES (5, 'Lisboa', 70000, 'Portugal', 'Europa')

INSERT INTO Cidade(ID, NOME, AREA, LOCALIZACAO_PAIS, LOCALIZACAO_CONTINENTE)
VALUES (6, 'Coimbra', 35000, 'Portugal', 'Europa')


--Tabela Espaco_Publico
INSERT INTO Espaco_Publico(ID, NOME, NOME_POPULAR, ENDERECO_MORADA,ENDERECO_LOCALIDADE,ENDERECO_CODIGOPOSTAL)
VALUES (7, 'Casa da Música', 'Casa da Música', 'Avenida da Boavista', 'Porto', '6040-610')

INSERT INTO Espaco_Publico(ID, NOME, NOME_POPULAR, ENDERECO_MORADA,ENDERECO_LOCALIDADE,ENDERECO_CODIGOPOSTAL)
VALUES (8, 'Terreiro do Paço', 'Terreiro do Paço', 'Terreiro do Paço', 'Lisboa', '1100-278')

INSERT INTO Espaco_Publico(ID, NOME, NOME_POPULAR, ENDERECO_MORADA,ENDERECO_LOCALIDADE,ENDERECO_CODIGOPOSTAL)
VALUES (10, 'Assembleia da República', 'Parlamento', 'Palácio de São Bento','Lisboa', '1249-068')

--Tabela Conter
INSERT INTO Conter(Tempo,ID_CIDADE, ID_ESPACO_PUBLICO)
VALUES ('15-10-2004',4,7)

INSERT INTO Conter(Tempo,ID_CIDADE, ID_ESPACO_PUBLICO)
VALUES ('14-02-1995',5,8)

INSERT INTO Conter(Tempo,ID_CIDADE, ID_ESPACO_PUBLICO)
VALUES ('16-08-2022',5,10)

--Tabela Construir
INSERT INTO Construir(Tempo,PRECO, ID_CIDADE, ID_CENTRO_MEDICO)
VALUES ('31-09-2008',13.500, 4, 24)

INSERT INTO Construir(Tempo,PRECO, ID_CIDADE, ID_CENTRO_MEDICO)
VALUES ('31-09-2021',14.500, 4, 25)

INSERT INTO Construir(Tempo,PRECO, ID_CIDADE, ID_CENTRO_MEDICO)
VALUES ('12-09-2014',15.500, 5, 23)

--Tabela Manutenção
INSERT INTO Manutencao(TEMPO,ID_FUNCIONARIO, Id_ESPACO_PUBLICO)
VALUES ('21-04-2012',7856, 7)

INSERT INTO Manutencao(TEMPO,ID_FUNCIONARIO, Id_ESPACO_PUBLICO)
VALUES ('12-09-2001',7246, 8)

INSERT INTO Manutencao(TEMPO,ID_FUNCIONARIO, Id_ESPACO_PUBLICO)
VALUES ('15-04-1974',7776, 10)

--Tabela Possuir
INSERT INTO Possuir(TEMPO,VALORM2, ID_CIDADE, ID_FREGUESIA)
VALUES ('12-12-1223',22.500, 4,123456)

INSERT INTO Possuir(TEMPO,VALORM2, ID_CIDADE, ID_FREGUESIA)
VALUES ('31-12-2020',25.500, 4,223456)

INSERT INTO Possuir(TEMPO,VALORM2, ID_CIDADE, ID_FREGUESIA)
VALUES ('21-3-2234',21.500, 4,334567)


--Tabela Contratar_CS
INSERT INTO Contratar_CS(SALARIO, ID_CS, ID_FREGUESIA, ID_FUNCIONARIO)
VALUES (1.200, 23, 1, 3452)

INSERT INTO Contratar_CS(SALARIO, ID_CS, ID_FREGUESIA, ID_FUNCIONARIO)
VALUES (900, 26, 2, 3652)

INSERT INTO Contratar_CS(SALARIO, ID_CS, ID_FREGUESIA, ID_FUNCIONARIO)
VALUES (1.700, 28, 3, 3952)

--Tabela Contratar_H
INSERT INTO Contratar_H(SALARIO, ID_FUNCIONARIO, ID_HOSPITAL, ID_CIDADE)
VALUES (1.500, 7109, 23, 4)


INSERT INTO Contratar_H(SALARIO, ID_FUNCIONARIO, ID_HOSPITAL, ID_CIDADE)
VALUES (1.700, 7110, 24, 5)

INSERT INTO Contratar_H(SALARIO, ID_FUNCIONARIO, ID_HOSPITAL, ID_CIDADE)
VALUES (2.100, 7111, 25, 6)


