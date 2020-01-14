CREATE TABLE [Clientes](
[cpf] VARCHAR(20) PRIMARY KEY,
[id_endereco] INT FOREIGN KEY REFERENCES Enderecos (id_endereco) NOT NULL,
[nome] VARCHAR(50) NOT NULL,
[sexo] VARCHAR(30)
);

