CREATE DATABASE jardineria;

create table oficinas(
id INT PRIMARY KEY AUTO_INCREMENT,
ciudad VARCHAR(255) NOT NULL,
region VARCHAR(255) NOT NULL,
pais VARCHAR(255) NOT NULL,
telefono TEXT NOT NULL,
direccion TEXT NOT NULL
);

create table jefes(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(255) NOT NULL
);

create table empleados(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(255) NOT NULL,
primer_apellido VARCHAR(255) NOT NULL,
segundo_apellido VARCHAR(255) NOT NULL,
extension VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
puesto VARCHAR(255) NOT NULL,
id_oficina INT NOT NULL,
id_jefe INT NOT NULL,
foreign key (id_oficina) references oficinas(id),
foreign key (id_jefe) references jefes(id)
);

CREATE TABLE clientes(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(255) NOT NULL,
nombre_contacto VARCHAR(255) NOT NULL,
apellido_contacto VARCHAR(255) NOT NULL,
telefono TEXT NOT NULL,
fax TEXT NULL,
direccion_principal TEXT NOT NULL,
direccion_secundaria TEXT NULL,
ciudad VARCHAR(255) NOT NULL,
region VARCHAR(255) NOT NULL,
pais VARCHAR(255) NOT NULL,
codigo_postal VARCHAR(255) NOT NULL,
limite_credito DOUBLE NOT NULL,
id_empleado INT NOT NULL,
foreign key (id_empleado) references empleados(id) 
);

create table gamas(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(255) NOT NULL
);

create table productos(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(255) NOT NULL,
dimensiones varchar(255) not null,
proveedor varchar(255) not null,
descripcion varchar(600) not null,
cantidad_stock int not null,
precio_proveedor double not null,
precio_venta double not null,
id_gama INT NOT NULL,
foreign key (id_gama) references gamas(id)
);

create table pedidos(
id INT PRIMARY KEY AUTO_INCREMENT,
fecha_pedido date not null,
fecha_esperada date,
fecha_entrega date not null,
estado varchar(255) not null,
comentarios varchar(600) not null,
cantidad int not null,
precio_unidad double not null,
id_cliente INT NOT NULL,
id_producto  INT NOT NULL,
foreign key (id_cliente) references clientes(id),
foreign key (id_producto) references productos(id)
);

create table pagos(
id INT PRIMARY KEY AUTO_INCREMENT,
forma_pago varchar(255) not null,
fecha_pago date not null,
total double not null,
id_cliente  INT NOT NULL,
foreign key (id_cliente) references clientes(id)
);

insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (1, 'La Jutosa', 'Cortes', 'Honduras', '630 186 9252', '561 Prairieview Plaza');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (2, 'San Rafael', 'Huánuco', 'Peru', '562 996 6318', '2064 Bowman Crossing');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (3, 'Guadalupe', 'Oaxaca', 'Mexico', '738 753 6091', '764 Warrior Plaza');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (4, 'Juli', 'Puno', 'Peru', '458 546 2665', '6 Cody Court');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (5, 'Chojata', 'Moquegua', 'Peru', '215 736 3574', '34525 Service Place');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (6, 'Nazca', 'Ica', 'Peru', '366 344 3910', '743 Gerald Parkway');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (7, 'Yauca', 'Arequipa', 'Peru', '220 688 3937', '4473 Magdeline Place');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (8, 'Benito Juarez', 'Guerrero', 'Mexico', '794 509 5360', '9 Acker Pass');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (9, 'La Jagua de Ibirico', 'Cesar', 'Colombia', '224 813 0283', '9194 Talisman Place');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (10, 'Guadalupe', 'Libertad', 'Peru', '465 665 8882', '71 Hollow Ridge Lane');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (11, 'Ichupampa', 'Arequipa', 'Peru', '338 666 3151', '0 Reinke Way');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (12, 'Catac', 'Ancash', 'Peru', '737 775 5629', '01 Donald Trail');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (13, 'Manuel Cavazos Lerma', 'Tamaulipas', 'Mexico', '950 188 6036', '5 Kinsman Center');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (14, 'San Francisco de Coray', 'Valle', 'Honduras', '597 686 9889', '7645 Charing Cross Place');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (15, 'Nombre de Jesús', 'Yoro', 'Honduras', '970 312 1912', '0 Sloan Place');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (16, 'Almeria', 'Andalucia', 'Spain', '816 898 8881', '81165 Mayfield Place');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (17, 'Lleida', 'Cataluna', 'Spain', '592 411 2657', '82641 Grayhawk Parkway');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (18, 'Santiago De Compostela', 'Galicia', 'Spain', '338 357 2804', '63 Clemons Center');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (19, 'Zamora', 'Castilla - Leon', 'Spain', '969 662 5927', '4770 Spaight Center');
insert into oficinas (id, ciudad, region, pais, telefono, direccion) values (20, 'Santander', 'Cantabria', 'Spain', '445 455 6125', '7002 Manitowish Junction');

insert into jefes (id, nombre) values (1, 'Iormina Willimot');
insert into jefes (id, nombre) values (2, 'Guthrey Tilney');
insert into jefes (id, nombre) values (3, 'Agace Elleray');
insert into jefes (id, nombre) values (4, 'Winnie Drever');
insert into jefes (id, nombre) values (5, 'Ruthe Halliday');
insert into jefes (id, nombre) values (6, 'Ludovico Gaither');
insert into jefes (id, nombre) values (7, 'Truda McPhillimey');
insert into jefes (id, nombre) values (8, 'Dominica Darlison');
insert into jefes (id, nombre) values (9, 'Zared Speek');

insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (1, 'Terrie', 'Dunseith', 'Davitti', '752', 'tdavitti0@state.gov', 'Basic Industries', 11, 3);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (2, 'Pepi', 'Jozaitis', 'Nolin', '676', 'pnolin1@stumbleupon.com', 'Public Utilities', 5, 4);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (3, 'Frazier', 'Castana', 'Issit', '877', 'fissit2@pbs.org', 'Health Care', 1, 1);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (4, 'Kelwin', 'Leadston', 'Pledge', '556', 'kpledge3@omniture.com', 'n/a', 8, 1);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (5, 'Herta', 'Kermeen', 'Ramble', '250', 'hramble4@deviantart.com', 'Finance', 16, 2);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (6, 'Edan', 'Prine', 'Boughtflower', '584', 'eboughtflower5@patch.com', 'Health Care', 1, 5);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (7, 'Gilberta', 'Nicklen', 'Dufton', '170', 'gdufton6@cmu.edu', 'n/a', 5, 4);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (8, 'Korie', 'Davage', 'Halifax', '547', 'khalifax7@examiner.com', 'Capital Goods', 18, 1);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (9, 'Joella', 'Balsom', 'Gotter', '924', 'jgotter8@irs.gov', 'Health Care', 8, 1);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (10, 'Ryan', 'Annice', 'Christer', '746', 'rchrister9@netlog.com', 'n/a', 10, 7);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (11, 'Maritsa', 'Cianelli', 'Twoohy', '580', 'mtwoohya@ihg.com', 'Consumer Non-Durables', 19, 5);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (12, 'Rowena', 'Clinnick', 'Charlewood', '755', 'rcharlewoodb@msu.edu', 'Consumer Services', 2, 3);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (13, 'Kissee', 'Vivian', 'Ollet', '743', 'kolletc@topsy.com', 'Technology', 15, 4);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (14, 'Daren', 'Wessell', 'Frossell', '622', 'dfrosselld@bluehost.com', 'Technology', 12, 7);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (15, 'Gregor', 'Hrycek', 'Klimentyev', '797', 'gklimentyeve@archive.org', 'Transportation', 16, 4);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (16, 'Josh', 'Heindle', 'Harses', '118', 'jharsesf@unc.edu', 'Technology', 4, 5);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (17, 'Sibyl', 'Guite', 'Bareford', '798', 'sbarefordg@about.me', 'Capital Goods', 4, 1);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (18, 'Germain', 'Ossulton', 'Kryska', '376', 'gkryskah@nifty.com', 'Transportation', 17, 7);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (19, 'Prentiss', 'Mant', 'Szabo', '925', 'pszaboi@angelfire.com', 'Technology', 16, 5);
insert into empleados (id, nombre, primer_apellido, segundo_apellido, extension, email, puesto, id_oficina, id_jefe) values (20, 'Tim', 'Huddlestone', 'Ors', '384', 'torsj@amazonaws.com', 'Consumer Services', 8, 3);

insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (1, 'Kin Beardsall', 'Kin', 'Beardsall', '803 849 1075', '48(121)396-3464', '52 Glacier Hill Avenue', '3814 Carey Street', 'Columbia', 'South Carolina', 'United States', '29215', 54396.7, 11);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (2, 'Jaimie Vanichkin', 'Jaimie', 'Vanichkin', '816 220 5267', '62(808)810-7766', '0 Continental Point', '03 Lakeland Pass', 'Independence', 'Missouri', 'United States', '64054', 327771.9, 12);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (3, 'Evyn Sands', 'Evyn', 'Sands', '513 143 5680', '370(739)630-8929', '755 Orin Court', '45 Sullivan Alley', 'Cincinnati', 'Ohio', 'United States', '45296', 891961.48, 6);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (4, 'Shayne Alderton', 'Shayne', 'Alderton', '806 920 5657', '55(802)657-8657', '88 Waxwing Parkway', '77061 4th Way', 'Lubbock', 'Texas', 'United States', '79405', 113719.27, 13);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (5, 'Devonne Youthead', 'Devonne', 'Youthead', '913 561 7315', '374(788)549-1137', '796 Eggendart Alley', '46670 Susan Road', 'Shawnee Mission', 'Kansas', 'United States', '66276', 361864.0, 20);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (6, 'Jeramie Binden', 'Jeramie', 'Binden', '808 525 5572', '52(464)235-6842', '209 Del Mar Lane', '7 Reindahl Point', 'Honolulu', 'Hawaii', 'United States', '96850', 910175.57, 5);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (7, 'Dolores Dobrowolny', 'Dolores', 'Dobrowolny', '757 874 9422', '7(312)508-1291', '1167 Talmadge Plaza', '06678 Esch Circle', 'Newport News', 'Virginia', 'United States', '23612', 942898.48, 2);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (8, 'Evan Emmison', 'Evan', 'Emmison', '515 231 0638', '54(982)965-8607', '6726 Monterey Parkway', '282 Randy Junction', 'Des Moines', 'Iowa', 'United States', '50393', 264694.92, 14);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (9, 'Marty Lober', 'Marty', 'Lober', '405 467 9074', '993(540)824-0689', '69 Stang Hill', '358 David Road', 'Oklahoma City', 'Oklahoma', 'United States', '73142', 589413.58, 2);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (10, 'Selig Benning', 'Selig', 'Benning', '408 447 4708', '994(946)494-9025', '92 Welch Crossing', '18 Muir Park', 'San Jose', 'California', 'United States', '95194', 985111.26, 17);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (11, 'Gladi Cleife', 'Gladi', 'Cleife', '510 108 2763', '62(742)166-2127', '99 Dennis Junction', '787 Mandrake Avenue', 'Richmond', 'California', 'United States', '94807', 555411.76, 5);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (12, 'Dniren Aynsley', 'Dniren', 'Aynsley', '704 717 1112', '251(326)872-6979', '87 Birchwood Alley', '99452 Gulseth Court', 'Charlotte', 'North Carolina', 'United States', '28210', 599396.63, 18);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (13, 'Rad Petel', 'Rad', 'Petel', '617 702 0131', '994(650)394-7931', '62661 Gateway Pass', '4 Straubel Junction', 'Boston', 'Massachusetts', 'United States', '02216', 288199.74, 9);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (14, 'Myrtle Enstone', 'Myrtle', 'Enstone', '401 891 6746', '7(171)397-4074', '8771 Victoria Terrace', '902 Logan Hill', 'Amarillo', 'Texas', 'United States', '79171', 648466.8, 14);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (15, 'Pen Annand', 'Pen', 'Annand', '504 695 0066', '1(402)269-1113', '56487 Marcy Hill', '1 Moland Center', 'New Orleans', 'Louisiana', 'United States', '70116', 697910.34, 6);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (16, 'Antonino Hindes', 'Antonino', 'Hindes', '734 794 2938', '33(488)773-9177', '47 Sunfield Way', '50821 Kim Park', 'Santa Cruz De Tenerife', 'Canarias', 'Spain', '38110', 589423.7, 11);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (17, 'Farlie Pauer', 'Farlie', 'Pauer', '202 540 7184', '53(128)735-1861', '98 Riverside Park', '5254 Pleasure Hill', 'Washington', 'District of Columbia', 'United States', '20409', 855669.96, 10);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (18, 'Beret Verlinden', 'Beret', 'Verlinden', '214 399 9369', '255(152)290-9814', '478 Dovetail Drive', '68 Veith Plaza', 'Dallas', 'Texas', 'United States', '75310', 419152.21, 17);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (19, 'Queenie McNeish', 'Queenie', 'McNeish', '484 487 1425', '86(248)815-8673', '23 Becker Place', '385 Buhler Lane', 'Reading', 'Pennsylvania', 'United States', '19610', 783715.4, 12);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (20, 'Vladimir Gaber', 'Vladimir', 'Gaber', '901 709 6775', '502(542)997-7559', '4069 Cordelia Lane', '6446 Transport Park', 'Memphis', 'Tennessee', 'United States', '38168', 915364.63, 10);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (21, 'Freemon Como', 'Freemon', 'Como', '404 616 0276', '62(846)910-0042', '13088 Emmet Junction', '5727 Scoville Road', 'Atlanta', 'Georgia', 'United States', '31136', 821887.97, 12);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (22, 'Shela Tynemouth', 'Shela', 'Tynemouth', '253 794 7634', '62(955)977-7726', '56286 Judy Court', '10513 Morning Park', 'Tacoma', 'Washington', 'United States', '98442', 320644.99, 15);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (23, 'Thaine Laughrey', 'Thaine', 'Laughrey', '310 858 9072', '62(784)940-1106', '2 Cherokee Alley', '215 American Ash Terrace', 'Long Beach', 'California', 'United States', '90805', 817077.56, 3);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (24, 'Christi Sidwell', 'Christi', 'Sidwell', '405 198 8097', '216(445)884-7671', '5 Artisan Road', '9332 Daystar Crossing', 'Oklahoma City', 'Oklahoma', 'United States', '73142', 252689.65, 5);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (25, 'Ginny Tooby', 'Ginny', 'Tooby', '407 797 2626', '27(709)891-9083', '8 Cordelia Hill', '73813 Forest Run Drive', 'Pinellas Park', 'Florida', 'United States', '34665', 177975.83, 9);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (26, 'Lilas Ellens', 'Lilas', 'Ellens', '202 176 6518', '63(823)253-9909', '56 Summit Park', '45 Anhalt Lane', 'Washington', 'District of Columbia', 'United States', '20575', 348646.85, 1);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (27, 'Donall Rouby', 'Donall', 'Rouby', '215 537 8941', '55(851)801-3133', '6 Del Mar Street', '60 Shelley Court', 'Philadelphia', 'Pennsylvania', 'United States', '19172', 714100.51, 9);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (28, 'Grayce Gladdin', 'Grayce', 'Gladdin', '408 950 3977', '1(731)461-3093', '7681 Columbus Plaza', '65228 Anzinger Hill', 'San Jose', 'California', 'United States', '95138', 793111.19, 19);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (29, 'Andie Baggally', 'Andie', 'Baggally', '512 829 3408', '420(391)626-6231', '8 Troy Pass', '4 Toban Road', 'Austin', 'Texas', 'United States', '78732', 916700.54, 10);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (30, 'Calla Avrahamof', 'Calla', 'Avrahamof', '501 670 4752', '93(806)663-2063', '261 Aberg Parkway', '79981 Lotheville Hill', 'North Little Rock', 'Arkansas', 'United States', '72118', 140154.42, 4);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (31, 'Dom Amis', 'Dom', 'Amis', '540 277 9806', '593(184)303-7128', '09325 Pond Way', '66 Brown Road', 'Roanoke', 'Virginia', 'United States', '24034', 993543.74, 20);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (32, 'Brinn Wartnaby', 'Brinn', 'Wartnaby', '801 770 4181', '46(693)748-3847', '5418 Hintze Parkway', '76884 Maryland Parkway', 'Provo', 'Utah', 'United States', '84605', 52105.39, 1);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (33, 'Phillipp Arrigucci', 'Phillipp', 'Arrigucci', '320 590 1817', '223(662)411-4182', '791 Boyd Lane', '7 Old Shore Street', 'Saint Cloud', 'Minnesota', 'United States', '56372', 629742.34, 7);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (34, 'Ellen Sparling', 'Ellen', 'Sparling', '717 792 3740', '507(741)643-0053', '3001 Debs Alley', '91252 Scott Junction', 'Harrisburg', 'Pennsylvania', 'United States', '17121', 58358.82, 18);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (35, 'Tabina Fannin', 'Tabina', 'Fannin', '757 467 5915', '255(303)724-2644', '9 Claremont Circle', '98859 Jenifer Point', 'Norfolk', 'Virginia', 'United States', '23504', 722234.68, 10);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (36, 'Foss Howerd', 'Foss', 'Howerd', '248 851 9270', '358(147)827-0747', '65091 Tennessee Pass', '4614 Merrick Court', 'Farmington', 'Michigan', 'United States', '48335', 275394.1, 5);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (37, 'Elianora Grebner', 'Elianora', 'Grebner', '860 355 5915', '970(330)596-6491', '70 Tomscot Pass', '2 Waxwing Terrace', 'Hartford', 'Connecticut', 'United States', '06183', 430646.3, 17);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (38, 'Hannie Slimon', 'Hannie', 'Slimon', '314 567 5081', '60(670)258-3170', '94 Village Crossing', '0243 Ridge Oak Court', 'Saint Louis', 'Missouri', 'United States', '63136', 348820.85, 17);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (39, 'Gerrie Denisovo', 'Gerrie', 'Denisovo', '318 753 8746', '86(107)757-2472', '740 Westport Avenue', '36382 Mosinee Court', 'Shreveport', 'Louisiana', 'United States', '71161', 455582.7, 11);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (40, 'Yardley Price', 'Yardley', 'Price', '435 957 0154', '1(181)978-8672', '8457 Helena Hill', '610 Hovde Parkway', 'Salt Lake City', 'Utah', 'United States', '84105', 66586.01, 6);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (41, 'Rochette Lissemore', 'Rochette', 'Lissemore', '202 312 4083', '93(269)378-1493', '5 Cardinal Terrace', '2312 3rd Court', 'Washington', 'District of Columbia', 'United States', '20535', 161363.96, 14);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (42, 'Ross Trippack', 'Ross', 'Trippack', '719 787 6573', '30(776)762-5875', '95851 Pleasure Avenue', '1 Blaine Circle', 'Colorado Springs', 'Colorado', 'United States', '80905', 685198.02, 2);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (43, 'Babbie Vazquez', 'Babbie', 'Vazquez', '802 561 0456', '86(720)224-5185', '623 Jay Junction', '520 Anhalt Plaza', 'Palma De Mallorca', 'Baleares', 'Spain', '07015', 101870.17, 8);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (44, 'Dylan Warby', 'Dylan', 'Warby', '916 882 7675', '86(453)672-1015', '710 Eastwood Hill', '62 Del Mar Lane', 'Chico', 'California', 'United States', '95973', 420808.73, 1);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (45, 'Kacy Upjohn', 'Kacy', 'Upjohn', '562 453 6075', '86(838)402-7174', '01 Glacier Hill Point', '2 Annamark Center', 'San Francisco', 'California', 'United States', '94110', 729206.02, 4);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (46, 'Megan Addyman', 'Megan', 'Addyman', '812 382 5284', '507(781)516-0148', '0 Dottie Road', '30589 Iowa Road', 'Evansville', 'Indiana', 'United States', '47719', 123326.96, 6);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (47, 'Rhoda Bennet', 'Rhoda', 'Bennet', '702 229 5961', '998(548)957-7309', '8188 Lien Lane', '51197 Mitchell Terrace', 'Las Vegas', 'Nevada', 'United States', '89105', 308806.22, 11);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (48, 'Yuri Paull', 'Yuri', 'Paull', '757 531 1941', '86(735)141-6573', '6390 Acker Terrace', '14 Mandrake Parkway', 'Norfolk', 'Virginia', 'United States', '23509', 302425.31, 18);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (49, 'Pooh Dye', 'Pooh', 'Dye', '504 275 3306', '1(217)586-5031', '00417 Aberg Junction', '5 Parkside Plaza', 'New Orleans', 'Louisiana', 'United States', '70187', 891127.82, 19);
insert into clientes (id, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_principal, direccion_secundaria, ciudad, region, pais, codigo_postal, limite_credito, id_empleado) values (50, 'Florentia Brundall', 'Florentia', 'Brundall', '202 597 2924', '86(735)132-9891', '8659 Melby Street', '76560 Warner Road', 'Washington', 'District of Columbia', 'United States', '20420', 92393.53, 6);

insert into gamas (id, nombre) values (1, 'flores');
insert into gamas (id, nombre) values (2, 'huerto');
insert into gamas (id, nombre) values (3, 'maceteras');
insert into gamas (id, nombre) values (4, 'plantas');

insert into productos (id, nombre, dimensiones, proveedor, descripcion, cantidad_stock, precio_proveedor, precio_venta, id_gama) values (1, 'Fendlers Ceanothus', 2, 'Tomaso Churchin', 'Transfer Training Treatment using Electrotherap Equipment', 18, 479458.11, 579797.11, 3);
insert into productos (id, nombre, dimensiones, proveedor, descripcion, cantidad_stock, precio_proveedor, precio_venta, id_gama) values (2, 'Hybrid Oak', 1, 'Ellette Tuppeny', 'Drainage of Left Nipple with Drain Dev, Extern Approach', 14, 68736.58, 997748.18, 3);
insert into productos (id, nombre, dimensiones, proveedor, descripcion, cantidad_stock, precio_proveedor, precio_venta, id_gama) values (3, 'Alkali Pepperweed', 2, 'Tuckie Sparke', 'Excision of Left Hip Joint, Open Approach, Diagnostic', 11, 727641.16, 575318.39, 4);
insert into productos (id, nombre, dimensiones, proveedor, descripcion, cantidad_stock, precio_proveedor, precio_venta, id_gama) values (4, 'Langsdorffs Tobacco', 1, 'Katina Dyhouse', 'Tomo Nucl Med Imag of Bi Low Extrem using Technetium 99m', 13, 470537.13, 916176.84, 2);
insert into productos (id, nombre, dimensiones, proveedor, descripcion, cantidad_stock, precio_proveedor, precio_venta, id_gama) values (5, 'New Zealand Spinach', 2, 'Ilysa Copson', 'Replacement of R Scapula with Autol Sub, Perc Endo Approach', 34, 502640.39, 214225.56, 1);
insert into productos (id, nombre, dimensiones, proveedor, descripcion, cantidad_stock, precio_proveedor, precio_venta, id_gama) values (6, 'Copelands Speedwell', 1, 'Reed Wood', 'Anatomical Regions, General, Excision', 10, 665903.20, 138759.43, 3);
insert into productos (id, nombre, dimensiones, proveedor, descripcion, cantidad_stock, precio_proveedor, precio_venta, id_gama) values (7, 'California Laurel', 1, 'Kym Gokes', 'Upper Veins, Insertion', 49, 355803.03, 575559.04, 1);
insert into productos (id, nombre, dimensiones, proveedor, descripcion, cantidad_stock, precio_proveedor, precio_venta, id_gama) values (8, 'Drummonds Cinquefoil', 1, 'Agnes Mansfield', 'Dilate L Temporal Art, Bifurc, w 3 Drug-elut, Perc', 28, 357929.27, 729617.71, 3);
insert into productos (id, nombre, dimensiones, proveedor, descripcion, cantidad_stock, precio_proveedor, precio_venta, id_gama) values (9, 'Mexican Pinyon', 2, 'Denyse McKimmey', 'Bypass R Int Iliac Art to L Femor A w Autol Vn, Perc Endo', 48, 461625.80, 532099.38, 3);
insert into productos (id, nombre, dimensiones, proveedor, descripcion, cantidad_stock, precio_proveedor, precio_venta, id_gama) values (10, 'Pseudofumaria', 1, 'Beltran Eadon', 'Excision of R Hip Bursa/Lig, Open Approach, Diagn', 16, 438881.87, 147595.38, 1);

insert into pedidos (id, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, cantidad, precio_unidad, id_cliente, id_producto) values (1, STR_TO_DATE('11/7/2022', '%m/%d/%Y'), STR_TO_DATE('9/11/2022', '%m/%d/%Y'), STR_TO_DATE('1/21/2023', '%m/%d/%Y'), 'enviado', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 7, 9418402.93, 3, 9);
insert into pedidos (id, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, cantidad, precio_unidad, id_cliente, id_producto) values (2, STR_TO_DATE('2/16/2023', '%m/%d/%Y'), STR_TO_DATE('4/4/2023', '%m/%d/%Y'), STR_TO_DATE('7/30/2022', '%m/%d/%Y'), 'espera', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 12, 6948293.78, 9, 10);
insert into pedidos (id, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, cantidad, precio_unidad, id_cliente, id_producto) values (3, STR_TO_DATE('8/16/2022', '%m/%d/%Y'), STR_TO_DATE('10/18/2022', '%m/%d/%Y'), STR_TO_DATE('11/13/2022', '%m/%d/%Y'), 'enviado', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.Sed ante. Vivamus tortor. Duis mattis egestas metus.', 28, 2307207.26, 7, 7);
insert into pedidos (id, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, cantidad, precio_unidad, id_cliente, id_producto) values (4, STR_TO_DATE('4/9/2023', '%m/%d/%Y'), STR_TO_DATE('6/18/2023', '%m/%d/%Y'), STR_TO_DATE('4/12/2023', '%m/%d/%Y'), 'entregado', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 9, 8805723.94, 6, 8);
insert into pedidos (id, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, cantidad, precio_unidad, id_cliente, id_producto) values (5, STR_TO_DATE('10/30/2022', '%m/%d/%Y'), STR_TO_DATE('3/12/2023', '%m/%d/%Y'), STR_TO_DATE('11/22/2022', '%m/%d/%Y'), 'entregado', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 34, 971094.37, 17, 7);
insert into pedidos (id, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, cantidad, precio_unidad, id_cliente, id_producto) values (6, STR_TO_DATE('10/10/2022', '%m/%d/%Y'), STR_TO_DATE('5/27/2023', '%m/%d/%Y'), STR_TO_DATE('2/13/2023', '%m/%d/%Y'), 'espera', 'Fusce consequat. Nulla nisl. Nunc nisl.', 17, 7246851.85, 14, 7);
insert into pedidos (id, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, cantidad, precio_unidad, id_cliente, id_producto) values (7, STR_TO_DATE('4/16/2023', '%m/%d/%Y'), STR_TO_DATE('5/1/2023', '%m/%d/%Y'), STR_TO_DATE('9/18/2022', '%m/%d/%Y'), 'espera', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 42, 7026313.19, 7, 4);
insert into pedidos (id, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, cantidad, precio_unidad, id_cliente, id_producto) values (8, STR_TO_DATE('9/18/2022', '%m/%d/%Y'), STR_TO_DATE('10/20/2022', '%m/%d/%Y'), STR_TO_DATE('2/23/2023', '%m/%d/%Y'), 'espera', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 16, 6674402.02, 18, 5);
insert into pedidos (id, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, cantidad, precio_unidad, id_cliente, id_producto) values (9, STR_TO_DATE('11/3/2022', '%m/%d/%Y'), STR_TO_DATE('10/23/2022', '%m/%d/%Y'), STR_TO_DATE('9/29/2022', '%m/%d/%Y'), 'entregado', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 12, 7678784.69, 16, 10);
insert into pedidos (id, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, cantidad, precio_unidad, id_cliente, id_producto) values (10, STR_TO_DATE('3/17/2023', '%m/%d/%Y'), STR_TO_DATE('10/26/2022', '%m/%d/%Y'), STR_TO_DATE('10/19/2022', '%m/%d/%Y'), 'entregado', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 37, 8531915.24, 2, 6);

insert into pagos (id, forma_pago, fecha_pago, total, id_cliente) values (1, 'efectivo', STR_TO_DATE('9/24/2022', '%m/%d/%Y'), 4100347.15, 19);
insert into pagos (id, forma_pago, fecha_pago, total, id_cliente) values (2, 'tarjeta debito', STR_TO_DATE('5/30/2023', '%m/%d/%Y'), 4605179.13, 20);
insert into pagos (id, forma_pago, fecha_pago, total, id_cliente) values (3, 'efectivo', STR_TO_DATE('10/15/2022', '%m/%d/%Y'), 4396571.17, 18);
insert into pagos (id, forma_pago, fecha_pago, total, id_cliente) values (4, 'tarjeta credito', STR_TO_DATE('3/25/2023', '%m/%d/%Y'), 7924819.31, 12);
insert into pagos (id, forma_pago, fecha_pago, total, id_cliente) values (5, 'tarjeta credito', STR_TO_DATE('7/27/2022', '%m/%d/%Y'), 1917190.27, 5);
insert into pagos (id, forma_pago, fecha_pago, total, id_cliente) values (6, 'tarjeta debito', STR_TO_DATE('10/10/2022', '%m/%d/%Y'), 8776683.88, 6);
insert into pagos (id, forma_pago, fecha_pago, total, id_cliente) values (7, 'tarjeta debito', STR_TO_DATE('5/12/2023', '%m/%d/%Y'), 3504122.06, 9);
insert into pagos (id, forma_pago, fecha_pago, total, id_cliente) values (8, 'tarjeta credito', STR_TO_DATE('9/19/2022', '%m/%d/%Y'), 9735301.9, 13);
insert into pagos (id, forma_pago, fecha_pago, total, id_cliente) values (9, 'efectivo', STR_TO_DATE('8/19/2022', '%m/%d/%Y'), 3521518.61, 3);
insert into pagos (id, forma_pago, fecha_pago, total, id_cliente) values (10, 'tarjeta credito', STR_TO_DATE('10/14/2022', '%m/%d/%Y'), 7167842.85, 14);