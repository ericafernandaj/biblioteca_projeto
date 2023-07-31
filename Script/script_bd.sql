INSERT INTO autor (id_autor, nome_autor, nome_editora, genero, nacionalidade) values
(1,'Antonela França', 'Grupo Planeta', 'Suspense', 'Brasileiro'),
(2,'Sophia Williams', 'Editora Nacional', 'Romance', 'Americana'),
(3,'Mateo López', 'Editora Globo', 'Ficção Científica', 'Mexicano'),
(4,'Emma Murray', 'Editora Record', 'Drama', 'Britânica'),
(5,'Lucas Pereira', 'Editora Intrínseca', 'Fantasia', 'Brasileiro'),
(6,'Francesca Rossi', 'Editora Arqueiro', 'Mistério', 'Italiana'),
(7,'Mohammed Ahmed', 'Editora Rocco', 'História', 'Egípcio'),
(8,'Isabella da Silva', 'Editora Nova Fronteira', 'Aventura', 'Brasileira'),
(9,'Ivo Moreira','Ovns e Ciencia','Ciencia','Brasileiro');

INSERT INTO cliente (idcliente, nome_cliente, email, telefone, data_nascimento, endereco, recomendacao) values
(1,'Rosalva de Oliveira','rosal@gmail.com','41998675647','1987-06-23','rua das camelias 34','o beijo do vampiro'),
(2,'Mateus Ferreira','mateus@gmail.com','41998765432','1995-02-14','av. dos Girassois 56','O Poderoso Chefão'),
(3,'Ana Silva','ana@gmail.com','41995566778','1990-11-30','rua das Rosas 78','Titanic'),
(4,'Marcos Santos','marcos@gmail.com','41992233445','1985-09-17','rua das Orquideas 123','A Origem'),
(5,'Juliana Pereira','juliana@gmail.com','41998877665','1992-05-01','av. das Tulipas 87','Clube da Luta'),
(6,'Lucas Rodrigues','lucas@gmail.com','41997788990','1997-08-10','rua das Margaridas 45','Matrix'),
(7,'Bianca Souza','bianca@gmail.com','41998877665','1988-04-03','av. dos Lirios 78','Forrest Gump');

INSERT INTO	editora (id_editora, ano_publicacao, nome_editora, pais_origem) values
(1,1998,'Grupo Planeta','Brasil'),
(2,1996,'Editora Nacional','Brasil'),
(3,1980,'Editora Globo','Brasil'),
(4,1993,'Editora Record','Brasil'),
(5,2003,'Editora Intrínseca','Brasil'),
(6,2006,'Editora Arqueiro','Brasil'),
(7,2020,'Editora Rocco','Brasil'),
(8,2015,'Editora Nova','Brasil'),
(9,2003,'Ovns e Ciencia','Brasil');

INSERT INTO emprestimo (id_emprestimo, email, data_devolucao, data_emprestimo, id_cliente) values
(1,'rosal@gmail.com','2020-07-01','2020-06-28',null),
(2,'mateus@gmail.com','2021-08-10','2021-07-25',null),
(3,'ana@gmail.com','2019-10-04','2019-09-20',null),
(4,'marcos@gmail.com','2021-03-03','2021-02-07',null),
(5,'juliana@gmail.com','2018-04-19','2018-03-03',null),
(6,'lucas@gmail.com','2020-07-01','2020-06-28',null),
(7,'bianca@gmail.com','2020-07-11','2020-06-28',null);

INSERT INTO livro (id_livro, nome_livro, recomendacao, ano_publicacao, data_devolucao) values
(1, 'O Homem do Labirinto','o beijo do vampiro',1987,'2020-07-01'),
(2, 'A Garota no Trem','O Poderoso Chefão',1995,'2021-08-10'),
(3, 'O Silêncio das Montanhas','Titanic',1990,'2019-10-04'),
(4, 'O Iluminado','A Origem',1985,'2021-03-03'),
(5, 'Garota Exemplar','Clube da Luta',1992,'2018-04-19'),
(6, 'As Outras Pessoas','Matrix',1997,'2020-07-01'),
(7, 'A Desconhecida','Forrest Gump',1988,'2020-07-11');






