CREATE TABLE [Veiculos_condicoes](
[id_vc] INT IDENTITY(1,1) PRIMARY KEY,
[placa] VARCHAR(25) FOREIGN KEY REFERENCES Veiculos (placa) NOT NULL,
[id_condicao] INT FOREIGN KEY REFERENCES Condicoes (id_condicao) NOT NULL,
);