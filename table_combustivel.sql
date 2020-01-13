CREATE TABLE [Combustivel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipo_combustivel] [varchar](100) NOT NULL,
    [placa] [nvarchar](255) FOREIGN KEY REFERENCES Veiculos(placa),
);

