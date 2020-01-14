DROP DATABASE teste;

CREATE DATABASE teste;

USE teste;

CREATE TABLE [Cor](
	[id_cor] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[cor] [varchar](100) NOT NULL,
);

CREATE TABLE [Marca](
	[id_marca] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[marca] [varchar](100) NOT NULL,
);

CREATE TABLE [Combustivel](
	[id] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[combustivel] [varchar](100) NOT NULL,
);

CREATE TABLE [Veiculos_combustiveis](
[id_vc] INT IDENTITY(1,1) PRIMARY KEY,
[id_veiculo] INT FOREIGN KEY REFERENCES Veiculos (id_veiculo) NOT NULL,
[id_combustivel] INT FOREIGN KEY REFERENCES Combustiveis (id_combustivel) NOT NULL
);

CREATE TABLE [Veiculos](
	[placa] VARCHAR(25) PRIMARY KEY NOT NULL,
	[id_marca] INT FOREIGN KEY REFERENCES Marca(id_marca) null,
	[num_portas] [int] NULL,
	[cambio] [varchar](100) NULL,
	[cor_primaria] INT FOREIGN KEY REFERENCES Cor(id_cor) null,
	[cor_secundaria] INT FOREIGN KEY REFERENCES Cor(id_cor) null,
	[categoria] [varchar](100)
);

CREATE TABLE [Opcionais](
	[id_opcional] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[opcional] [varchar](100) NOT NULL,
);

CREATE TABLE [Veiculos_opcionais](
[id_vo] INT IDENTITY(1,1) PRIMARY KEY,
[placa] VARCHAR(25) FOREIGN KEY REFERENCES Veiculos (placa) NOT NULL,
[id_opcional] INT FOREIGN KEY REFERENCES Opcionais (id_opcional) NOT NULL,
);

CREATE TABLE [Condicoes](
	[id_condicao] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[condicao] [varchar](100) NOT NULL
);

CREATE TABLE [Veiculos_condicoes](
[id_vc] INT IDENTITY(1,1) PRIMARY KEY,
[placa] VARCHAR(25) FOREIGN KEY REFERENCES Veiculos (placa) NOT NULL,
[id_condicao] INT FOREIGN KEY REFERENCES Condicoes (id_condicao) NOT NULL,
);

CREATE TABLE [Enderecos](
[id_endereco] INT IDENTITY(1,1) PRIMARY KEY,
[logradouro] VARCHAR(50) NOT NULL,
[estado] VARCHAR(50) NOT NULL,
[cidade] VARCHAR(55) NOT NULL,
[CEP] VARCHAR(30)
);

CREATE TABLE [Clientes](
[cpf] VARCHAR(20) PRIMARY KEY,
[id_endereco] INT FOREIGN KEY REFERENCES Enderecos (id_endereco) NOT NULL,
[nome] VARCHAR(50) NOT NULL,
[sexo] VARCHAR(30)
);

CREATE TABLE [Telefones](
	[id_telefone] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    [cpf] VARCHAR(20)  FOREIGN KEY REFERENCES Clientes (cpf) NOT NULL,
	[telefone] [varchar](20) NOT NULL,
);

CREATE TABLE [Emails](
	[id_email] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    [cpf] VARCHAR(20)  FOREIGN KEY REFERENCES Clientes (cpf) NOT NULL,
	[email] [varchar](50) NOT NULL,
);

CREATE TABLE [Anuncios](
[id_anuncio] INT IDENTITY(1,1) PRIMARY KEY,
[cpf] VARCHAR(20) FOREIGN KEY REFERENCES Clientes (cpf) NOT NULL,
[placa] VARCHAR(25) FOREIGN KEY REFERENCES Veiculos (placa) NOT NULL,
[id_endereco] INT FOREIGN KEY REFERENCES Enderecos (id_endereco) NOT NULL,
[preco] NUMERIC(6,2) NOT NULL,
[km] INT NOT NULL,
[observacao] VARCHAR(250)
);

CREATE TABLE [Fotos](
[id_foto] INT IDENTITY(1,1) PRIMARY KEY,
[id_anuncio] INT FOREIGN KEY REFERENCES Anuncios (id_anuncio) NOT NULL,
[foto] VARCHAR(350) NOT NULL,
);