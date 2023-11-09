create database TiendaSPD;
use TiendaSPD;
create table Dispositivo_Provedor(
idDisPro int primary key auto_increment,
idDispositivo int,
idProvedor int
);

create table Compra(
idCompra int primary key auto_increment,
idCliente int,
idDispositivo int,
fechaCompra date
);
create table Dispositivos(
idDispositivo int primary key auto_increment,
Descripcion varchar(100),
Precio int,
foreign key (idDispositivo) references Dispositivo_Provedor(idDispositivo),
foreign key (idDispositivo) references Compra(idDispositivo)
);
SELECT * FROM Dispositivos;

create table Cliente(
idCliente int primary key auto_increment,
Nombre  varchar(50),
Apellido varchar(50),
Direccion varchar(100),
telefono int,
foreign key (idCliente) references Compra (idCliente)
);

SELECT * FROM Cliente;
DROP TABLE Dispositivos;
TRUNCATE TABLE Dispositivos;

create table Provedor(
idProvedor int primary key auto_increment,
nombreEmpresa varchar(50),
direccion varchar(100),
telefono int,
nacional boolean,
foreign key (idProvedor) references Dispositivo_Provedor(idProvedor)
);

SELECT * FROM Provedor;


