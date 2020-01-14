CREATE TABLE [Telefones](
	[id_telefone] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    [cpf] VARCHAR(20)  FOREIGN KEY REFERENCES Clientes (cpf) NOT NULL,
	[telefone] [varchar](20) NOT NULL,
);