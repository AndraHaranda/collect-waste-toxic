const express = require('express');
const cors = require('cors');
const routes = require('./routes');
const morgan = require('morgan');
require('./config/connection');

class App {

    constructor() {
        this.app = express();
        this.middlewares();
        this.routes();
    }

    middlewares(){
        //Fara com que a aplicação entenda dados no formato JSON.
        this.app.use(express.json());

        this.app.use(function(req, res, next) {
            console.log(req.headers);
            res.header("Access-Control-Allow-Origin", "*");
            res.header("Access-Control-Allow-Headers", 
                       "Origin, X-Requested-With, Content-Type, Accept, Authorization");
            res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE');
            next();
          });
    }

    routes(){
        this.app.use(routes)
    }
}

//Exportando a Classe App e o atributo app.
module.exports = new App().app