create table voziloRentPZI (
ID_vozila int(5) primary key auto_increment not null,
registracija varchar(10) not null,
proizvodac varchar(20) not null,
model varchar(20) not null,
godiste varchar(10) not null,
cijenaPodanu int(10) not null,
tipGoriva varchar(10) not null
);

alter table voziloRentPZI add slika varchar(300);
alter table voziloRentPZI add opis varchar(300);

