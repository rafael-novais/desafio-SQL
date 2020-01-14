CREATE TABLE [Anuncios](
[id_anuncio] INT IDENTITY(1,1) PRIMARY KEY,
[cpf] VARCHAR(20) FOREIGN KEY REFERENCES Clientes (cpf) NOT NULL,
[placa] VARCHAR(25) FOREIGN KEY REFERENCES Veiculos (placa) NOT NULL,
[id_endereco] INT FOREIGN KEY REFERENCES Enderecos (id_endereco) NOT NULL,
[preco] NUMERIC(6,2) NOT NULL,
[km] INT NOT NULL,
[observacao] VARCHAR(250)
);