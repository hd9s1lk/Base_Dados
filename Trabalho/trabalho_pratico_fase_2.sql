USE TRABALHO_P
GO

--Tabela Funcionario
INSERT INTO Funcionario(ID, NOME, APELIDO, TELEFONE, ENDERECO_MORADA, ENDERECO_LOCALIDADE, ENDERECO_CODIGO_POSTAL)
VALUES (7856, 'Manuel', 'Fernandes', 913256789, 'Rua das Ma�as', 'Pedrou�os', '4567-922')

INSERT INTO Funcionario(ID, NOME, APELIDO, TELEFONE, ENDERECO_MORADA, ENDERECO_LOCALIDADE, ENDERECO_CODIGO_POSTAL)
VALUES (7246, 'Tartaruga', 'Genial', 913223489, 'Rua dos Pessegos', 'Alfarroba', '4567-232')

INSERT INTO Funcionario(ID, NOME, APELIDO, TELEFONE, ENDERECO_MORADA, ENDERECO_LOCALIDADE, ENDERECO_CODIGO_POSTAL)
VALUES (7776, 'In�s', 'Saraiva', 913123789, 'Rua das Tartes', 'S�o Jo�o', '4789-222')


--Tabela Freguesia
INSERT INTO Freguesia (Codigo, Area, Populacao)
VALUES (123456, 12000, 7500)

INSERT INTO Freguesia (Codigo, Area, Populacao)
VALUES (234567, 13000, 8000)

INSERT INTO Freguesia (Codigo, Area, Populacao)
VALUES (345678, 15000, 10000)



--Tabela Centro_Medico
INSERT INTO Centro_Medico (ID, Nome)
VALUES (23, 'Centro Hospitalar do T�mega e Sousa')

INSERT INTO Centro_Medico (ID, Nome)
VALUES (24, 'Centro Hospitalar Universit�rio S�o Jo�o')

INSERT INTO Centro_Medico (ID, Nome)
VALUES (25, 'Centro Hospitalar Universit�rio de Santo Ant�nio')


--Tabela Centro_Saude

INSERT INTO Centro_Saude (ID_CS, Nome, Enfermagem)
VALUES (23, 'Unidade de Sa�de Familiar', 'Sim')

INSERT INTO Centro_Saude(ID_CS, Nome, Enfermagem)
VALUES (26, 'Unidade de Sa�de Familiar Porto Centro', 'Sim')

INSERT INTO Centro_Saude(ID_CS, Nome, Enfermagem)
VALUES (28, 'Centro de Sa�de de Campanh�', 'Sim')


--Tabela Hospital
INSERT INTO Hospital (ID_H, Especialidade)
VALUES (23, 'Cardiologia')

INSERT INTO Hospital (ID_H, Especialidade)
VALUES (24, 'Cirurgia Geral')

INSERT INTO Hospital (ID_H, Especialidade)
VALUES (25, 'Cirurgia Pedi�trica')


--Tabela Hospital Especialidades
INSERT INTO Hospital_Especialidades(Codigo_Especialidade, Nome_Especialidade)
VALUES (29, 'Cardiologia')

INSERT INTO Hospital_Especialidades(Codigo_Especialidade, Nome_Especialidade)
VALUES (30, 'Cirurgia Geral')

INSERT INTO Hospital_Especialidades(Codigo_Especialidade, Nome_Especialidade)
VALUES (40, 'Cirurgia Pedi�trica')

--Tabela Cidade
INSERT INTO Cidade(ID, NOME, AREA, LOCALIZACAO_PAIS, LOCALIZACAO_CONTINENTE)
VALUES (4, 'Porto', 60000, 'Portugal', 'Europa')

INSERT INTO Cidade(ID, NOME, AREA, LOCALIZACAO_PAIS, LOCALIZACAO_CONTINENTE)
VALUES (5, 'Lisboa', 70000, 'Portugal', 'Europa')

INSERT INTO Cidade(ID, NOME, AREA, LOCALIZACAO_PAIS, LOCALIZACAO_CONTINENTE)
VALUES (6, 'Coimbra', 35000, 'Portugal', 'Europa')


--Tabela Espaco_Publico
INSERT INTO Espaco_Publico(ID, NOME, NOME_POPULAR, ENDERECO_MORADA,ENDERECO_LOCALIDADE,ENDERECO_CODIGOPOSTAL)
VALUES (7, 'Casa da M�sica', 'Casa da M�sica', 'Avenida da Boavista', 'Porto', '604-610')

INSERT INTO Espaco_Publico(ID, NOME, NOME_POPULAR, ENDERECO_MORADA,ENDERECO_LOCALIDADE,ENDERECO_CODIGOPOSTAL)
VALUES (8, 'Terreiro do Pa�o', 'Terreiro do Pa�o', 'Terreiro do Pa�o', 'Lisboa', '1100-278')

INSERT INTO Espaco_Publico(ID, NOME, NOME_POPULAR, ENDERECO_MORADA,ENDERECO_LOCALIDADE,ENDERECO_CODIGOPOSTAL)
VALUES (10, 'Assembleia da Rep�blica', 'Parlamento', 'Pal�cio de S�o Bento', 'Lisboa', '1249-068')

--Tabela Conter
INSERT INTO Conter(ID_CIDADE, ID_ESPACO_PUBLICO)
VALUES (4,7)

INSERT INTO Conter(ID_CIDADE, ID_ESPACO_PUBLICO)
VALUES (5,8)

INSERT INTO Conter(ID_CIDADE, ID_ESPACO_PUBLICO)
VALUES (5,10)

--Tabela Construir
INSERT INTO Construir(PRECO, ID_CIDADE, ID_CENTRO_MEDICO)
VALUES (13.500, 4, 24)

INSERT INTO Construir(PRECO, ID_CIDADE, ID_CENTRO_MEDICO)
VALUES (14.500, 4, 25)

INSERT INTO Construir(PRECO, ID_CIDADE, ID_CENTRO_MEDICO)
VALUES (15.500, 5, 23)

--Tabela Manuten��o
INSERT INTO Manutencao(ID_FUNCIONARIO, Id_ESPACO_PUBLICO)
VALUES (7856, 7)

INSERT INTO Manutencao(ID_FUNCIONARIO, Id_ESPACO_PUBLICO)
VALUES (7246, 8)

INSERT INTO Manutencao(ID_FUNCIONARIO, Id_ESPACO_PUBLICO)
VALUES (7776, 10)

--Tabela Possuir
INSERT INTO Possuir(VALORM2, ID_CIDADE, ID_FREGUESIA)
VALUES (22.500, 4,1)

INSERT INTO Possuir(VALORM2, ID_CIDADE, ID_FREGUESIA)
VALUES (25.500, 5,2)

INSERT INTO Possuir(VALORM2, ID_CIDADE, ID_FREGUESIA)
VALUES (21.500, 6,3)


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


