create database Biblioteca;
use Biblioteca;
-- Criação da tabela Cliente
CREATE TABLE `Cliente` (
  `idcliente` int PRIMARY KEY,
  `nome_cliente` varchar(255),
  `email` varchar(255),
  `telefone` varchar(255),
  `data_nascimento` date,
  `endereco` varchar(255),
  `recomendacao` varchar(255)
);
-- Criação da tabela Livro
CREATE TABLE `Livro` (
  `id_livro` int PRIMARY KEY,
  `nome_livro` varchar(255),
  `recomendacao` varchar(255),
  `ano_publicacao` int,
  `data_devolucao` date
);
-- Criação da tabela Autor
CREATE TABLE `Autor` (
  `id_autor` int PRIMARY KEY,
  `nome_autor` varchar(255),
  `nome_editora` varchar(255),
  `genero` varchar(255),
  `nacionalidade` varchar(255)
);
-- Criação da tabela Emprestimo
CREATE TABLE `Emprestimo` (
  `id_emprestimo` int PRIMARY KEY,
  `email` varchar(255),
  `data_devolucao` date,
  `data_emprestimo` date,
  `id_cliente` int
);
-- Criação da tabela Editora
CREATE TABLE `Editora` (
  `id_editora` int PRIMARY KEY,
  `ano_publicacao` int,
  `nome_editora` varchar(255),
  `pais_origem` varchar(255)
);
-- Adição de chave estrangeira na tabela Emprestimo referenciando a tabela Cliente
ALTER TABLE `Emprestimo` ADD FOREIGN KEY (`id_cliente`) REFERENCES `Cliente` (`idcliente`);
-- Adição de chave estrangeira na tabela Livro referenciando a tabela Cliente
ALTER TABLE `Livro` ADD FOREIGN KEY (`recomendacao`) REFERENCES `Cliente` (`recomendacao`);
-- Adição de chave estrangeira na tabela Livro referenciando a tabela Editora
ALTER TABLE `Livro` ADD FOREIGN KEY (`ano_publicacao`) REFERENCES `Editora` (`ano_publicacao`);
-- Adição de chave estrangeira na tabela Autor referenciando a tabela Livro
ALTER TABLE `Autor` ADD FOREIGN KEY (`nome_editora`) REFERENCES `Livro` (`nome_livro`);
-- Adição de chave estrangeira na tabela Autor referenciando a tabela Livro
ALTER TABLE `Autor` ADD FOREIGN KEY (`nome_autor`) REFERENCES `Livro` (`nome_livro`);
