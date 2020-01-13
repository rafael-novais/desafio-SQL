CREATE TABLE [Anuncios](
[id_anuncio] INT IDENTITY(1,1) PRIMARY KEY,
[cpf] INT FOREIGN KEY REFERENCES Clientes (cpf) NOT NULL,
[id_veiculo] INT FOREIGN KEY REFERENCES Veiculos (id_veiculo) NOT NULL,
[id_endereco] INT FOREIGN KEY REFERENCES Endereco (id_endereco) NOT NULL,
[preco] NUMERIC(6,2) NOT NULL,
[km] INT NOT NULL,
[observacao] VARCHAR(250),
[foto] INT FOREIGN KEY REFERENCES Fotos (id_foto) NOT NULL,
);