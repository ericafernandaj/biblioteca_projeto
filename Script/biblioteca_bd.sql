create database Biblioteca;
use Biblioteca;

CREATE TABLE `Cliente` (
  `idcliente` int PRIMARY KEY,
  `nome_cliente` varchar(255),
  `email` varchar(255),
  `telefone` varchar(255),
  `data_nascimento` date,
  `endereco` varchar(255),
  `recomendacao` varchar(255)
);

CREATE TABLE `Livro` (
  `id_livro` int PRIMARY KEY,
  `nome_livro` varchar(255),
  `recomendacao` varchar(255),
  `ano_publicacao` int,
  `data_devolucao` date
);

CREATE TABLE `Autor` (
  `id_autor` int PRIMARY KEY,
  `nome_autor` varchar(255),
  `nome_editora` varchar(255),
  `genero` varchar(255),
  `nacionalidade` varchar(255)
);

CREATE TABLE `Emprestimo` (
  `id_emprestimo` int PRIMARY KEY,
  `email` varchar(255),
  `data_devolucao` date,
  `data_emprestimo` date,
  `id_cliente` int
);

CREATE TABLE `Editora` (
  `id_editora` int PRIMARY KEY,
  `ano_publicacao` int,
  `nome_editora` varchar(255),
  `pais_origem` varchar(255)
);

ALTER TABLE `Emprestimo` ADD FOREIGN KEY (`id_cliente`) REFERENCES `Cliente` (`idcliente`);

ALTER TABLE `Livro` ADD FOREIGN KEY (`recomendacao`) REFERENCES `Cliente` (`recomendacao`);

ALTER TABLE `Livro` ADD FOREIGN KEY (`ano_publicacao`) REFERENCES `Editora` (`ano_publicacao`);

ALTER TABLE `Autor` ADD FOREIGN KEY (`nome_editora`) REFERENCES `Livro` (`nome_livro`);

ALTER TABLE `Autor` ADD FOREIGN KEY (`nome_autor`) REFERENCES `Livro` (`nome_livro`);
