CREATE TABLE [Veiculos_opcionais](
[id_vo] INT IDENTITY(1,1) PRIMARY KEY,
[id_veiculo] INT FOREIGN KEY REFERENCES Veiculos (id_veiculo) NOT NULL,
[id_opcional] INT FOREIGN KEY REFERENCES Opcionais (id_opcional) NOT NULL,
);