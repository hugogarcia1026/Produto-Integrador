INSERT INTO equipes (nome, codigo) VALUES 
("Mesa Azul", "1"),
("Mesa Laranja ", "2"),
("Mesa Amarela", "3"),
("Mesa Verde", "4"),
("Mesa Cinza", "5");



INSERT INTO participantes (nome) VALUES
("Hugo"),
("Erick"),
("Sarah"),
("Arthur"),
("João Victor");

INSERT INTO equipes_participantes (id_participante, id_equipe) VALUES 
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

INSERT INTO pistas (nome, id_equipe) VALUES
("Autódromo de Interlagos", 1),
("Circuito de Mônaco", 2),
("Silverstone", 3),
("Spa-Francorchamps", 4),
("Monza", 5);

INSERT INTO corridas (nome) VALUES
("Grande Prêmio do Brasil"),
("Grande Prêmio de Mônaco"),
("Grande Prêmio da Inglaterra"),
("Grande Prêmio da Bélgica"),
("Grande Prêmio da Itália");