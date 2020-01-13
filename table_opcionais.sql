CREATE TABLE [Opcionais](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome_opicional] [varchar](100) NOT NULL,
    [placa] [nvarchar](255) FOREIGN KEY REFERENCES Veiculos(placa),
);

