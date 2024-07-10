CREATE DATABASE acervoDigital;
USE acervoDigital;

CREATE TABLE Autor(
 id_autor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 nomeCompleto VARCHAR(100),
 descricao VARCHAR(500),
 foto VARCHAR(300)
) ENGINE=INNODB;

CREATE TABLE Livro(
id_livro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_autor INT,
titulo VARCHAR(100),
subtitulo VARCHAR(100),
isbn INT,
assuntos VARCHAR(200),
numEdicao INT,
editora VARCHAR(100),
localPublicacao VARCHAR(100),
numPaginas SMALLINT,
FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
) ENGINE=INNODB;

CREATE TABLE Usuario(
id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100), 
senha VARCHAR(50),
email VARCHAR(100),
endereco VARCHAR(100),
telefone VARCHAR(100),
dataNascimento DATE,
CPF VARCHAR(14) UNIQUE
) ENGINE=INNODB;

CREATE TABLE Registros(
 id_autor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 id_usuario INT,
 id_livro INT,
 dataRetirada DATE,
 dataDevolucao DATE,
 FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
 FOREIGN KEY (id_livro) REFERENCES Livro(id_livro)
) ENGINE=INNODB;
