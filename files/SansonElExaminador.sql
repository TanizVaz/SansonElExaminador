
drop database if exists sanson_el_examinador_db;
create database sanson_el_examinador_db;
use sanson_el_examinador_db;

-- Drop Tables
        


drop table if exists usuarios; 
   



CREATE TABLE usuarios (
                            
id_usuario VARCHAR(100) not NULL primary key,
                                            
password VARCHAR(100) not NULL,

firstname VARCHAR(100) not NULL,

lastname VARCHAR(100) not NULL,


role VARCHAR(50) not null,

estatus VARCHAR(50) not null,

clave_activacion VARCHAR(50),

password_es_temporal BOOLEAN not null,

vigencia_password integer not null,

ultima_actualizacion_password date not null,

res_sec1 VARCHAR(45) NULL,

res_sec2 VARCHAR(45) NULL,

res_sec3 VARCHAR(45) NULL

res_sec1 VARCHAR(45) not NULL,

res_sec2 VARCHAR(45) not NULL,

res_sec3 VARCHAR(45) not NULL

            
);



insert into usuarios values ("admin@novalidserver.net", "passw0rd", "Admin", "", "ADMIN", "ACTIVO", null, false, 0, curdate(),"Pepe","Pepe","Pepe");
insert into usuarios values ("guillermart@gmail.com", "passw0rd", "Guillermo", "Martinez" ,"INSTRUCTOR", "ACTIVO", null, false, 0, curdate(),"Pepe","Pepe","Pepe");
insert into usuarios values ("kuauhtzin@gmail.com", "passw0rd", "Raziel", "Munoz" ,"PARTICIPANTE", "ACTIVO", null, false, 0, curdate(),"m","l","c");


-- -----------------------------------------------------
-- Table Evento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Evento (
  idEvento INT NOT NULL,
  idExamen INT NOT NULL,
  Tipo VARCHAR(10) NOT NULL,
  FechaInicio VARCHAR(45) NULL,
  Duracion VARCHAR(45) NULL,
  FechaFin VARCHAR(45) NULL,
  Tema VARCHAR(45) NULL,
  PRIMARY KEY (idEvento));


-- -----------------------------------------------------
-- Table Lista_Participantes
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Lista_Participantes (
  idEvento INT NOT NULL,
  idParticipante INT NOT NULL,
  claveParticipacion VARCHAR(45) NULL,
  Calificacion VARCHAR(45) NULL,
  Autorizado VARCHAR(45) NULL);


-- -----------------------------------------------------
-- Table Examen
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Examen (
  idExamen INT NOT NULL,
  Nombre VARCHAR(45) NULL,
  Descripcion VARCHAR(45) NULL,
  NoPreguntas VARCHAR(45) NULL,
  Examencol VARCHAR(45) NULL,
  PRIMARY KEY (idExamen));

-- -----------------------------------------------------
-- Table Participantes
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Participantes (
  mail INT NOT NULL,
  Estado VARCHAR(45) NULL,
  PRIMARY KEY (mail));


-- -----------------------------------------------------
-- Table EvaluarEvento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS EvaluarEvento (
  idEvento INT NOT NULL,
  idParticipante VARCHAR(45) NULL,
  Calificacion VARCHAR(45) NULL,
  Comentario VARCHAR(45) NULL,
  PRIMARY KEY (idEvento));


-- -----------------------------------------------------
-- Table Preguntas
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Preguntas (
  idPreguntas INT NOT NULL,
  idExamen VARCHAR(45) NULL,
  Pregunta VARCHAR(45) NULL,
  Respuestas VARCHAR(45) NULL,
  idCategoria VARCHAR(45) NULL,
  Obligatoria VARCHAR(45) NULL,
  PRIMARY KEY (idPreguntas));


-- -----------------------------------------------------
-- Table Categoria
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Categoria (
  idCategoria INT NOT NULL,
  idExamen VARCHAR(45) NULL,
  nombreCategoria VARCHAR(45) NULL,
  porcentaje VARCHAR(45) NULL,
  PRIMARY KEY (idCategoria));


-- -----------------------------------------------------
-- Table Tema
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Tema (
  idTema INT NOT NULL,
  nombre VARCHAR(45) NULL,
  idUsuario VARCHAR(45) NULL,
  FechaApertura VARCHAR(45) NULL,
  PRIMARY KEY (idTema));

-- -----------------------------------------------------
-- Table Comentarios
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Comentarios (
  idComentarios INT NOT NULL,
  idTema VARCHAR(45) NULL,
  Texto VARCHAR(45) NULL,
  idUsuario VARCHAR(45) NULL,
  FechaHora VARCHAR(45) NULL,
  PRIMARY KEY (idComentarios));
