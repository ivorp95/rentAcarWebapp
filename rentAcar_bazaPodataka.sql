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
alter table voziloRentPZI change opis opis varchar(1000);
alter table voziloRentPZI change model model varchar(100);
alter table voziloRentPZI add opis varchar(300);

insert into voziloRentPZI (ID_vozila, registracija, proizvodac, model, godiste, cijenaPodanu, tipGoriva, slika, opis) values 
(1,'RI345PP','Maseratti', 'MC20', '2022', 150, 'Benzin', 'https://banner2.cleanpng.com/20180328/vpq/kisspng-2012-bentley-continental-gtc-2018-bentley-continen-bentley-5abb4dfd896532.3899968215222246375628.jpg','Novi MC20 Cielo vozi u pratnji novog V6 Nettuno motora koji je debitirao u MC20 2020.
Upravo predstavljeni MC20 Cielo nudi savršenu mješavinu sportskog duha i luksuza zahvaljujući
jedinstvenoj mogućnosti za ovaj segment – inovativnom staklenom krovu na uvlačenje. https://www.edmunds.com/maserati/mc20/2022/features-specs/'),
(2,'ZG666SS','Bentley','Continental GT','2023',200,'Benzin','https://imgd.aeplcdn.com/664x374/n/cw/ec/108971/mc20-exterior-right-front-three-quarter-2.jpeg?isig=0&q=80','Sjedeći u Continental GT Speedu imate osjećaj da ste u savršeno krojenom, luksuznom odijelu, a osjeti dodira, vida i mirisa preplavljeni su kvalitetom.
Motor W12 s 650 konjskih snaga od nule do 60 km/h dolazi za oko 3.1 sekundu, što je impresivno kad se uzme u obzir težina automobila od oko 1.950 kilograma.
Mjenjač s dvostrukom spojkom, osam brzina i automatskim prijenosom glatko se kreće kroz brzine, a kočnice automobil zaustavljaju u trenu. https://www.bentleymotors.com/en/models/continental-gt/continental-gt-speed.html'),
(3,'RI772UR','Bugatti', 'Veyron','2012', 250, 'Benzin', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJasjsu0n7mEPvfsdMZ7D0QAuWljC-EjnxzvkR67in5IffrAALe7j0pphl7-zUfqxbhJI&usqp=CAU','Veyron pokreće Volkswagenov motor od 16 cilindara (dva motora od 8 cilindara spojena u jedan), 64 ventila i 1001 konjsku snagu. Motor hladi čak 10 hladnjaka.
Mjenjač je BorgWarner-ov sedmostupanjski poluautomatski DSG i omogućuje promjenu brzine za vrijeme od 8 milisekundi. https://en.wikipedia.org/wiki/Bugatti_Veyron#Specifications_(all_variants)'),
(4,'ZG1950HS','Dodge', 'Challenger SRT Hellcat', '2022',300,'Benzin','https://s3-prod.autonews.com/s3fs-public/OEM04_140529993_AR_-1_ITGFYLWHFTFD.jpg','za moćnog imena Dodge Challenger SRT Hellcat krije se i moćni stroj kojeg pokreće 6,2 litreni V8 motor s kompresorom koji razvija više od 600 konja.
Američki ljepotan koristi 20” kovane kotače u mat crnoj boji presvučene Pirelli P Zero Nero gumama ispod kojih se skrivaju ogromne, 390 milimetarske Brembo kočnice.
https://carbuzz.com/cars/dodge/challenger-srt-hellcat/2023-dodge-challenger-srt-hellcat');

insert into voziloRentPZI (ID_vozila, registracija, proizvodac, model, godiste, cijenaPodanu, tipGoriva, slika, opis) values 
(5,'ST1987AR','Rimac', 'Nevera', '2022', 500, 'Elektricni', 'https://web-cdn.rimac-automobili.com/wp-content/uploads/2021/05/30205149/GP-3.png','Osim što je prvi hrvatski serijski automobil, ovaj bolid je i najsnažniji te najbrže ubrzavajući homologirani serijski automobil ikada.
 1914 KS i 2300 Nm okretnog momenta, ubrzanje do 100 km/h iz stajanja za 1,85 sekundi te najveća brzina od 412 km/h.'),
(6,'RI225GZ','Porsche','Carrera S','2017',200,'Benzin','https://ptravelsclub.com/wp-content/uploads/sites/3/2018/12/porsche-transparent-5a21ec15bbd4e0.5928616415121725657694.jpg','ikona sportskih automobila s motorom postavljenim straga, sjedalima 2+2 i nenadmašivim performansama.
Doživite Porscheov genetski kod u njegovom najčišćem obliku. Tipične Porsche performanse generira 3-litreni biturbo boxerski 6-cilindarski motor s 283 kW (385 KS) snage i 450 Nm okretnog momenta.
');





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

