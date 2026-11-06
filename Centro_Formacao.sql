
CREATE DATABASE centro_formacao;
USE centro_formacao;

CREATE TABLE Turma (
idturma INT AUTO_INCREMENT PRIMARY KEY,
designacao VARCHAR(50) NOT NULL,
datacriacao DATE NOT NULL
);

CREATE TABLE Formando (
idformando INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
numidentificacao VARCHAR(20) NOT NULL,
datanascimento DATE NOT NULL,
idturma INT NOT NULL,
FOREIGN KEY (idturma) REFERENCES Turma(idturma)
);

CREATE TABLE Curso (
idcurso INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
datainicio DATE NOT NULL,
cargahoraria INT NOT NULL
);

CREATE TABLE Turma_Curso (
idturma INT,
idcurso INT,
PRIMARY KEY (idturma,idcurso),
FOREIGN KEY (idturma) REFERENCES Turma(idturma),
FOREIGN KEY (idcurso) REFERENCES Curso(idcurso)
);




