# rent-a-car webapp

## Web aplikacija za unajmljivanje vozila.

1. Izbor auta rasploloživih za najam

2. Registracija korisničkog računa / prijava u sustav

3. rentanje vozila na određeni period

4. komunikacija sa bazom podataka 

5. obrazac plaćanja za uslugu, izdavanje računa

6. potvrda o transakciji i primopredaja vozila

voziloRentPZI( ID_vozila(PK), registracija, proizvođač, model, godište, cijenaPoDanu, tipGoriva, slika, opis), 
KorisnikRentPZI(ID_korisnika(PK), ime, prezime, brojMob),
RacunRentPZI(ID_vozila(PK,FK1), ID_korisnika(PK,FK2), brojDanaUNajmu, ukupnaCijena)
