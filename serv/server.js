var express = require('express');
var app = express();

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

app.get("/podatci", function(req,res){
    return res.send({message:"ma bravo "});
});

app.get("/podatci/:id", function(req,res){
    var id=req.params.id;
    id++;
    return res.send({message: id +" oki doki"});
});

app.post("/podatci", function(req,res){
    var podatci = req.body.podatak;
    return res.send({message: podatci + " ok"});
});

app.get("/korisnik", function(req,res){
    dbConn.query('SELECT * FROM korisnik_pzi', function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'READ svi Korisnici' });
});
});

app.get("/korisnik/:id", function(req,res){
    var id=req.params.id;
    if(!id){
        return res.status(400).send({ error: true, message: 'Krivi ID' });
    }
    dbConn.query('SELECT * FROM korisnik_pzi WHERE id=? ', id , function (error, results, fields) {
    if (error) throw error;
    return res.send({ error: false, data: results, message: 'READ svi Korisnici' });
});
    //return res.send({message:"READ "+id});
});

app.post("/korisnik", function(req,res){
    var ime = req.body.podatak1;
    var prezime = req.body.podatak2;
    var tel= req.body.podatak3;
    dbConn.query('INSERT INTO korisnik_pzi(id,ime,prezime,tel) VALUES (null,?,?,?) ', [ime, prezime, tel] , function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results[0], message: 'INSERT into Korisnici ime: '+ime+', prezime: '+prezime+', tel: '+tel });
    });
    //return res.send({message: "CREATE " +ime +" "+ prezime +" "+tel+" ok"});
});

app.put("/korisnik/:id", function(req,res){
    var id=req.params.id;
    var ime = req.body.podatak1;
    var prezime = req.body.podatak2;
    var tel= req.body.podatak3;
    dbConn.query('UPDATE korisnik_pzi SET ime=? ,prezime=? ,tel=? WHERE id=? ', [ime, prezime, tel, id] , function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results[0], message: 'UPDATE novi podatci ime: '+ime+', prezime: '+prezime+', tel: '+tel });
    });
    //return res.send({message: "UPDATE "+id +" nova adresa:"+adr});
});

app.delete("/korisnik/:id",function(req,res){
    var id=req.params.id;
    if(!id){
    return res.status(400).send({ error: true, message: 'Krivi ID' });
    }
    dbConn.query('DELETE FROM korisnik_pzi WHERE id=? ', id , function (error, results, fields) {
    if (error) throw error;
    return res.send({ error: false, data: results, message: 'DELETE from Korisnici where id=?' });
});

   // return res.send({message: "DELETE " +id});
});





// set port
app.listen(3000, function () {
    console.log('Node app is running on port 3000');
});

//node server, pokrece pozicioniranjem na web servise      node server.js       u terminalu