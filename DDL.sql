DROP DATABASE IF EXISTS pi_idev4_2026_1;
CREATE DATABASE IF NOT EXISTS pi_idev4_2026_1;

USE pi_idev4_2026_1;

CREATE TABLE IF NOT EXISTS equipes (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
codigo LONGTEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS participantes (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS equipes_participantes (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
id_participante INT NOT NULL,
id_equipe INT NOT NULL,
FOREIGN KEY (id_participante) REFERENCES participantes(id),
FOREIGN KEY (id_equipe) REFERENCES equipes(id) 
);

CREATE TABLE IF NOT EXISTS pistas (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
id_equipe INT NULL,
FOREIGN KEY (id_equipe) REFERENCES equipes(id) 
);

CREATE TABLE IF NOT EXISTS corridas (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS dados_corridas (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
id_corrida INT NOT NULL,
id_equipe INT NOT NULL,
tempo_volta TIME NULL,
FOREIGN KEY (id_equipe) REFERENCES equipes(id), 
FOREIGN KEY (id_corrida) REFERENCES corridas(id)
);

CREATE TABLE IF NOT EXISTS podiums (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
id_corrida INT NOT NULL,
id_equipe INT NOT NULL,
total_voltas INT NOT NULL,
melhor_volta INT NOT NULL,
tempo_ultima_volta INT NOT NULL,
velocidade_media INT NOT NULL,
posicao INT NOT NULL,
FOREIGN KEY (id_equipe) REFERENCES equipes(id),
FOREIGN KEY (id_corrida) REFERENCES corridas(id)
);
 
 
 -- inserir 5 registros em cada tabela (menos na podiums e da dados_corridas)


