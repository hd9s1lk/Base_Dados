USE TRABALHO_P
GO

---- EX 2.1

Select SubQuery.Tempo , Cm.Nome ,SubQuery.Preco
From (Select Min(Tempo) as Tempo,ID_CENTRO_MEDICO as ID, PRECO as Preco
      From Construir
      Group By ID_CENTRO_MEDICO,PRECO) SubQuery ,Centro_Medico CM
Where SubQuery.ID = Cm.ID

---- EX 2.2

Select Cidade.NOME , SubQuery.NumFreguesias
From (Select Count(ID_FREGUESIA) as NumFreguesias,ID_CIDADE
      From Possuir
      Group By ID_CIDADE) SubQuery,Cidade
Where SubQuery.ID_CIDADE = Cidade.ID

---- EX 2.3

Select Cidade.ID, Cidade.Nome , Cidade.Area
From (Select Cidade.ID as ID
    From (Select Min(AREA) as MinArea
          From Cidade)MinArea , Cidade
    Where Cidade.AREA = MinArea.MinArea)SubRotina,Cidade
Where SubRotina.ID = Cidade.ID



--EX 2.4
Select Count(ID_FUNCIONARIO) , ID_HOSPITAL
FROM Contratar_H, Hospital 
ORDER BY ID_HOSPITAL






-- EX 2.5

Select Espaco_Publico.NOME
From Conter, Espaco_Publico
Where conter.ID_CIDADE is null and Espaco_Publico.ID = Conter.ID_ESPACO_PUBLICO


