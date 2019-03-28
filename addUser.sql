CREATE PROC UserAdd
@id int,
@name nvarchar(50),
@surname  nvarchar(50),
@login varchar(16),
@password varchar(32),
@level int,
@accountStatus int
AS
INSERT INTO [user] (name,surname,login,password)
VALUES (@name, @surname, @login, @password)