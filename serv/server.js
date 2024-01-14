var express = require('express');
var app = express();
var cors = require('cors');
app.use(cors('localhost'));
//const dbConfig = require("./db.config.js");
var mysql = require('mysql');

var bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());


var dbConn = mysql.createConnection({
    host: "ucka.veleri.hr",
    port: 3306,
    user: "ipangos",
    password: "11",
    database: "ipangos"
});

dbConn.connect();

app.get("/podaciRentPzi", function(req,res){
    return res.send({message:"uspjesno dohvaceni podaci "});
});

app.get("/podaciRentPzi/:id", function(req,res){
    var id=req.params.id;
    id++;
    return res.send({message: id +" oki doki"});
});

app.post("/podaciRentPzi", function(req,res){
    var podaci = req.body.podatak;
    return res.send({message: podaci + " ok"});
});

app.get("/korisnikRentPZI", function(req,res){
    dbConn.query('SELECT * FROM korisnikRentPZI', function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'READ svi Korisnici' });
});
});

app.get("/korisnikRentPZI/:id", function(req,res){
    var id=req.params.id;
    if(!id){
        return res.status(400).send({ error: true, message: 'Krivi ID' });
    }
    dbConn.query('SELECT * FROM korisnikRentPZI WHERE ID_korisnika=?', id , function (error, results, fields) {
    if (error) throw error;
    return res.send({ error: false, data: results, message: 'READ svi Korisnici' });
});
    //return res.send({message:"READ "+id});
});







// rentAcar registracija korisnika
app.post("/korisnikRentPZI", function(req,res){
    var ime = req.body.ime;
    var prezime = req.body.prezime;
    var tel= req.body.tel;
    dbConn.query('INSERT INTO korisnikRentPZI(ID_korisnika,ime,prezime,brojMob) VALUES (null,?,?,?) ', [ime, prezime, tel] , function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results[0], message: 'INSERT into korisnikRentPZI ime: '+ime+', prezime: '+prezime+', brojMob: '+tel });
    });
    //return res.send({message: "CREATE " +ime +" "+ prezime +" "+tel+" ok"});
});

// rentAcar najam vozila unos u bazu u agregacijsku tablicu
app.post("/najamRentPZI", function(req,res){
    var ime = req.body.ime;
    var brojDana = req.body.brojDana;
    var idVozilo=req.body.idVozilo;
    dbConn.query(' INSERT INTO racunRentPZI(ime, ID_vozila, brojDanaUNajmu) VALUES (?,?,?) ', [ime,idVozilo, brojDana] , function (error, results, fields) {
        if (error) throw error;
        //return res.send({ error: false, data: results[0], message: 'INSERT into korisnikRentPZI ime: '+ime+', prezime: '+prezime+', brojMob: '+tel });
    });
    //return res.send({message: "CREATE " +ime +" "+ prezime +" "+tel+" ok"});
});











app.get("/korisnikRentPZIid", function(req,res){
    var ime = req.body.ime;
    dbConn.query('SELECT ID_korisnika FROM korisnikRentPZI WHERE ime=? ', ime , function (error, results, fields) {
        if (error) throw error;
        return res.send({data: results});
});
});







//UPDATE tablice nakon unosa novog racuna da se izracuna ukupna cijena

app.put("/racunRentPZIupdate", function(req,res){
    dbConn.query('UPDATE racunRentPZI SET ukupnaCijena=brojDanaUNajmu * (SELECT cijenaPodanu from voziloRentPZI WHERE racunRentPZI.ID_vozila=voziloRentPZI.ID_vozila);' , function (error, results, fields) {
        if (error) throw error;
        //return res.send({ error: false, data: results[0], message: 'UPDATE novi podaci ime: '+ime+', prezime: '+prezime+', brojMob: '+tel });
    });
    //return res.send({message: "UPDATE "+id +" nova adresa:"+adr});
});













// brisanje racuna iz tablice preko ID_vozila


app.post("/racunRentPZIobrisi",function(req,res){
    var id=req.body.id;
    /*if(!id){
    return res.status(400).send({ error: true, message: 'Krivi ID' });
    }*/
    dbConn.query('DELETE  FROM racunRentPZI WHERE ID_vozila=? ', [id] , function (error, results, fields) {
    if (error) throw error;
    //return res.send({ error: false, data: results, message: 'DELETE' });
});

   // return res.send({message: "DELETE " +id});
});









// set port
app.listen(3000, function () {
    console.log('Node app is running on port 3000');
});

//node server, pokrece pozicioniranjem na web servise      node server.js       u terminalu