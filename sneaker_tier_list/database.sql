
create database if not exists sneaker_tier_list character set utf8mb4 collate utf8mb4_unicode_ci;
use sneaker_tier_list;

create table if not exists usuarios (
    id int auto_increment primary key,
    username varchar(50) not null unique,
    created_at timestamp default current_timestamp
) engine=innodb;

create table if not exists zapatos (
    id int auto_increment primary key,
    nombre varchar(100) not null,
    descripcion text not null,
    imagen varchar(100) not null
) engine=innodb;

create table if not exists encuestas (
    id int auto_increment primary key,
    usuario_id int not null,
    estado enum('en_progreso', 'finalizada') default 'en_progreso',
    fecha_inicio timestamp default current_timestamp,
    fecha_finalizacion timestamp null default null,
    foreign key (usuario_id) references usuarios(id) on delete cascade
) engine=innodb;

create table if not exists calificaciones (
    id int auto_increment primary key,
    encuesta_id int not null,
    zapato_id int not null,
    puntuacion tinyint not null check (puntuacion between 1 and 5),
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp,
    unique key unique_calificacion (encuesta_id, zapato_id),
    foreign key (encuesta_id) references encuestas(id) on delete cascade,
    foreign key (zapato_id) references zapatos(id) on delete cascade
) engine=innodb;

insert into zapatos (nombre, descripcion, imagen) values
('nike air force 1', 'clasico urbano versatil', '1_nike_af1.jpg'),
('air jordan 1', 'modelo legendario', '2_jordan_1.jpg'),
('adidas samba', 'zapatilla retro', '3_adidas_samba.jpg'),
('converse chuck taylor all star', 'clasico de lona', '4_converse_chuck.jpg'),
('adidas stan smith', 'diseno minimalista', '5_adidas_stan.jpg'),
('nike dunk low', 'silueta de baloncesto', '6_nike_dunk.jpg'),
('new balance 550', 'diseno retro', '7_nb_550.jpg'),
('adidas superstar', 'puntera de goma', '8_adidas_superstar.jpg'),
('nike air max 90', 'unidad air visible', '9_nike_am90.jpg'),
('vans old skool', 'clasico del skate', '10_vans_oldskool.jpg'),
('new balance 990', 'modelo premium', '11_nb_990.jpg'),
('adidas yeezy boost 350 v2', 'tecnologia boost', '12_yeezy_350.jpg'),
('puma suede', 'clasico de gamuza', '13_puma_suede.jpg'),
('new balance 574', 'silueta versatil', '14_nb_574.jpg'),
('nike cortez', 'modelo clasico', '15_nike_cortez.jpg'),
('air jordan 4', 'mallas laterales', '16_jordan_4.jpg'),
('adidas gazelle', 'zapatilla de gamuza', '17_adidas_gazelle.jpg'),
('new balance 9060', 'diseno voluminoso', '18_nb_9060.jpg'),
('reebok classic leather', 'silueta de cuero', '19_reebok_classic.jpg'),
('hoka clifton', 'zapatilla de running', '20_hoka_clifton.jpg');
