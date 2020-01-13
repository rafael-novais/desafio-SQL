CREATE TABLE [Clientes](
[cpf] VARCHAR(20) PRIMARY KEY,
[id_endereco] INT FOREIGN KEY REFERENCES Endereco (id_endereco) NOT NULL,
[nome] VARCHAR(50) NOT NULL,
[sexo] VARCHAR(30),
[telefone] VARCHAR(35) NOT NULL,
[email] VARCHAR(55)
);

INSERT INTO Clientes(cpf, id_endereco, nome, sexo, telefone, email) VALUES ('335.859.002-85', 1, 'SERJ TANKIAN');