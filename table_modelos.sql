CREATE TABLE [Modelos](
[id_modelo] INT IDENTITY(1,1) PRIMARY KEY,
[id_marca] INT FOREIGN KEY REFERENCES Marca (id_marca) NOT NULL,
[versao] VARCHAR(150) NOT NULL,
);