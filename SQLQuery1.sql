Create Proc  userAdd
@id int,
@name NVARCHAR (50),
@sirname NVARCHAR (50),
@login VARCHAR (16),
@password VARCHAR (32),
@level int,
@accoutStatus int
AS
	INSERT INTO SER(name,sirname,login,password)
	Values (@name, @sirname, @login, @password) 