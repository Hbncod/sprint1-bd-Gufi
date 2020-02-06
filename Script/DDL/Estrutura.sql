-- Criando o Banco
Create DataBase Gufi_Manha;
Go
-- Define o banco utilizado
Use Gufi_Manha;
Go

-- Criar Tabelas

	Create Table TipoUsuario(
		Id_TipoUsuario		int Primary Key Identity,
		TituloTipoUsuario	VarChar(100) NOT NULL Unique -- Unique significa q só poderá existir esse dado em uma 'linha'
	);
	Go
	Create Table TipoEvento(
		Id_TipoEvento		Int Primary Key Identity,
		TituloTipoEvento	VarChar(255) NOT NULL
	);
	Go

	Create Table  Instituicao(
		Id_Instituicao	Int	Primary Key Identity,
		CNPJ			Char(14) Not Null Unique,
		NomeFantasia	VarChar(255) Not Null Unique,
		Endereco		VarChar(255) Not Null Unique
	);
	Go

	Create Table Usuario(
		Id_Usuario		Int Primary Key Identity,
		NomeUsuario		VarChar(200) Not Null ,
		Email			VarChar(200) Not Null Unique,
		Senha			VarChar(20)	 Not Null,
		DataCadastro	DateTime2,
		Genero			VarChar,
		Fk_TipoUsuario	Int	Foreign Key References TipoUsuario (Id_TipoUsuario)
	);

	Go
