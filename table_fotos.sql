CREATE TABLE [Fotos](
[id_foto] INT IDENTITY(1,1) PRIMARY KEY,
[id_anuncio] INT FOREIGN KEY REFERENCES Anuncios (id_anuncio) NOT NULL,
[foto] VARCHAR(150) NOT NULL,
);