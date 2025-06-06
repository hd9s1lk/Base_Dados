USE master
GO

USE TRABALHO_P
GO 

--EX 4


CREATE TRIGGER trg_ConstrucaoLimit ON Construir
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @IDCidade INT;
    DECLARE @CentroMedCnt INT;
    SELECT @IDCidade = ID_CIDADE FROM inserted;
    SELECT @CentroMedCnt = COUNT(*) 
    FROM Construir 
    WHERE ID_CIDADE = @IDCidade;
    IF @CentroMedCnt < 2
    BEGIN
        INSERT INTO Construir (Tempo, PRECO, ID_CIDADE, ID_CENTRO_MEDICO)
        SELECT Tempo, PRECO, ID_CIDADE, ID_CENTRO_MEDICO FROM inserted;
    END
    ELSE
    BEGIN
        RAISERROR('A cidade já tem dois centros médicos.', 16, 1);
    END
END;
GO