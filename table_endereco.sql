CREATE TABLE [Enderecos](
[id_endereco] INT IDENTITY(1,1) PRIMARY KEY,
[id_anuncio] INT FOREIGN KEY REFERENCES Anuncios (id_anuncio) NOT NULL,
[cpf] VARCHAR(50) FOREIGN KEY REFERENCES Clientes (cpf) NOT NULL,
[logradouro] VARCHAR(50) NOT NULL,
[estado] VARCHAR(50) NOT NULL,
[cidade] VARCHAR(55) NOT NULL
);