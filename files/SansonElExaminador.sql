
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

);



insert into usuarios values ("admin@novalidserver.net", "passw0rd", "Admin", "", "ADMIN", "ACTIVO", null, false, 0, curdate(),"Pepe","Pepe","Pepe");
insert into usuarios values ("guillermart@gmail.com", "passw0rd", "Guillermo", "Martinez" ,"INSTRUCTOR", "ACTIVO", null, false, 0, curdate(),"Pepe","Pepe","Pepe");
insert into usuarios values ("kuauhtzin@gmail.com", "passw0rd", "Raziel", "Munoz" ,"PARTICIPANTE", "ACTIVO", null, false, 0, curdate(),"m","l","c");





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
-- Table Participantes
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Participantes (
  mail INT NOT NULL,
  Estado VARCHAR(45) NULL,
  PRIMARY KEY (mail));


  -- -----------------------------------------------------
  -- Table Calificacion
  --Esta tabla se va a encargar de relacionar el resultado postumo a calificacion
  -- -----------------------------------------------------
   CREATE TABLE IF NOT EXISTS Calificaciones (
    idPersona VARCHAR(100),
    idEvento VARCHAR(50),
    calificacion INT,
    examen VARCHAR(100),
    comentario VARCHAR(45) NULL
    );




-- -----------------------------------------------------
-- Table Preguntas
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Preguntas (
  banco VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  texto VARCHAR (140) NOT NULL,
  tipo VARCHAR(20) NOT NULL,
  categoria VARCHAR(30) NOT NULL,
  respuestas VARCHAR(150) NOT NULL,
  correcta VARCHAR(30),
  obligatoria BOOLEAN
  );
  insert into Preguntas values('DEMO','villaseduardo@hotmail.com', 'El caballo blanco es blanco?','VerFal','bobas','Verdadero*Falso','Verdadero',true);
  insert into Preguntas values('DEMO','villaseduardo@hotmail.com', 'De qu&eacute;; color es la manzana?','OpcPer','bobas','Morada*Blanca*Amarilla*Rosa','Amarilla',false);
  insert into Preguntas values('DEMO','villaseduardo@hotmail.com', 'C&oacute;mo se llama el ping&uumlino de linux?','OpcPer','bobas','Pepito*Juanito*No lo se*Linux','Verdadero',false);

  insert into Preguntas values('DEMO','villaseduardo@hotmail.com', 'Es Lewis Hamilton el campe&oacute;n del mundo?','VerFal','F1','Verdadero*Falso','Verdadero',true);
  insert into Preguntas values('DEMO','villaseduardo@hotmail.com', 'Es Nico Roosberg la persona m&aacute;s agradable del mundo?','VerFal','F1','Verdadero*Falso','Falso',False);
  insert into Preguntas values('DEMO','villaseduardo@hotmail.com', 'Selecciona la nacionalidad de Checo Perez?','OpcPer','F1','Mexicano*Alem&aacute;n*Italiani*Argentino','Mexicano',true);
  insert into Preguntas values('DEMO','villaseduardo@hotmail.com', 'Es Nico Roosberg la persona m&aacute;s agradable del mundo?','VerFal','F1','Verdadero*Falso','Falso',False);
  insert into Preguntas values('DEMO','villaseduardo@hotmail.com', 'Es el campe&oacute;n mundial m&aacute;s joven del mundo?','OpcPer','F1','Vettel*Riccardio*Botas*Gutierrez','Vettel',true);
-- -----------------------------------------------------
-- BancosExamenes, insertar preguntas, evento
-- Table Examen con bancos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS BancosExamenes(
  banco VARCHAR(100),
  email VARCHAR(100),
  categoria VARCHAR(100),
  noObl INT,
  noOpc INT,
  examen VARCHAR(100),
  participantes VARCHAR(2000)
  );
  insert into BancosExamenes values('DEMO','villaseduardo@hotmail.com', 'bobas','1','1','cosasLalo','villaseduardo@hotmail.com*evillasrmx@gmail.com');
  insert into BancosExamenes values('DEMO','villaseduardo@hotmail.com', 'F1','2','1','cosasLalo','villaseduardo@hotmail.com*evillasrmx@gmail.com');
    -- -----------------------------------------------------
    -- Table Evento
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS Evento (
      evento VARCHAR(100),
      examen VARCHAR(100),
      tipo VARCHAR(10) NOT NULL,
      fechaInicio VARCHAR(45) ,
      horaInicio VARCHAR(45),
      fechaFin VARCHAR(45) ,
      horaFin VARCHAR(45),
      duracion INT ,
      tema VARCHAR(45) ,
      banco VARCHAR(100),
      PRIMARY KEY (idEvento));
insert into Evento values('Mi_amigo','DemostracionExamenAbierto','Abierto','2016-01-12','0:00', '2016-01-15','0:00','30','cosasLalo','DEMO');
insert into Evento values('Mi_amigoC','DemostracionExamenCerrado','Cerrado','2016-01-12','0:00', '2016-01-12','0:30','30','cosasLalo','DEMO');
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

  -- -----------------------------------------------------
-- Table Foro
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Foro (
  idUsuario VARCHAR(45) NULL,
  idDuda VARCHAR(45) NULL,
  Pregunta_Foro VARCHAR(250) NULL,
  Respuesta_Foro_1 VARCHAR(250) NULL,
  Respuesta_Foro_2 VARCHAR(250) NULL,
  Respuesta_Foro_3 VARCHAR(250) NULL,
  PRIMARY KEY (idUsuario));
