CREATE TABLE [Marca](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_modelo] [nvarchar](255) FOREIGN KEY REFERENCES Modelo(id),
	[nome_marca] [varchar](100) NOT NULL,
);

