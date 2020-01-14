CREATE TABLE [Emails](
	[id_email] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    [cpf] VARCHAR(20)  FOREIGN KEY REFERENCES Clientes (cpf) NOT NULL,
	[email] [varchar](50) NOT NULL,
);