CREATE TABLE [Veiculos](
	[placa] VARCHAR(25) PRIMARY KEY NOT NULL,
	[id_marca] INT FOREIGN KEY REFERENCES Marca(id_marca),
	[num_portas] INT NULL,
	[cambio] [varchar](100) NULL,
	[cor_primaria] INT FOREIGN KEY REFERENCES Cor(id_cor) null,
	[cor_secundaria] INT FOREIGN KEY REFERENCES Cor(id_cor) null,
	[categoria] [varchar](100)
);

