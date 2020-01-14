CREATE TABLE [Veiculos_combustiveis](
[id_vc] INT IDENTITY(1,1) PRIMARY KEY,
[id_veiculo] INT FOREIGN KEY REFERENCES Veiculos (id_veiculo) NOT NULL,
[id_combustivel] INT FOREIGN KEY REFERENCES Combustiveis (id_combustivel) NOT NULL
);