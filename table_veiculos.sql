CREATE TABLE [Veiculos](
	[placa] [int] IDENTITY(1,1) NOT NULL,
	[id_marca] [nvarchar](255) FOREIGN KEY REFERENCES Marca(id),
	[id_combustivel] [nvarchar](255) FOREIGN KEY REFERENCES Combustivel(id),
	[num_portas] [int] NULL,
	[cambio] [varchar](100) NULL,
	[cor_primaria] [nvarchar](255) FOREIGN KEY REFERENCES Cor(id_cor) null,
	[cor_secundaria] [nvarchar](255) FOREIGN KEY REFERENCES Cor(id_cor) null
);

