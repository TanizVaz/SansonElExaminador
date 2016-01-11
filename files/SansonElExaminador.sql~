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

ultima_actualizacion_password date not null

            
);



insert into usuarios values ("admin@novalidserver.net", "passw0rd", "Admin", "", "ADMIN", "ACTIVO", null, false, 0, curdate());
insert into usuarios values ("guillermart@gmail.com", "passw0rd", "Guillermo", "Martinez" ,"SOCIO", "ACTIVO", null, false, 0, curdate());


  