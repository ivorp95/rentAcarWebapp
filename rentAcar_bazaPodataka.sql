create table voziloRentPZI (
ID_vozila int(5) primary key auto_increment,
registracija varchar(10),
proizvodac varchar(20),
model varchar(20),
godiste varchar(10),
cijenaPodanu int(10),
tipGoriva varchar(10)
);

alter table voziloRentPZI add slika varchar(300);
alter table voziloRentPZI add opis varchar(300);

create table korisnikRentPZI (
ID_korisnika int(5) primary key auto_increment,
ime varchar(30),
prezime varchar(50),
brojMob varchar(30)
);


create table racunRentPZI (
ID_korisnika int(5),
ID_vozila int(5),
brojDanaUNajmu int(5),
);
alter table racunRentPZI add ukupnaCijena int(10);
alter table racunRentPZI drop cijenaPodanu;

alter table racunRentPZI add primary key (ID_korisnika,ID_vozila);

alter table racunRentPZI add constraint VKkorisnika 
foreign key VKkorisnika(ID_korisnika) references korisnikRentPZI(ID_korisnika) 
on delete restrict on update cascade;

alter table racunRentPZI add constraint VKvozila 
foreign key VKvozila(ID_vozila) references voziloRentPZI(ID_vozila) 
on delete restrict on update cascade;



select * from korisnikRentPZI;
delete from korisnikRentPZI where ID_korisnika=1;

