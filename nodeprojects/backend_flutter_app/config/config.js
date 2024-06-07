//importamos biblioteca bluebird
const promise = require('bluebird');

//configuramos las opciones para pg-promises
const options = {
    promiseLib : promise,
    query: (e) => {}
};

// creamos instancia de pg-prtomise con las opciones configuradas

const pgp = require('pg-promise')(options);

//obtenemos los tipos de datos postgreSQL
const types = pgp.pg.types;

// configurar un analizador de tipo de datos 114(timestamp)
types.setTypeParser(1114, function (stringValue) {
 return stringValue;

});

//configurar la informaciopn de la bd

const databaseConfig = {
'host': '127.0.0.1',
'port': 5432,
'database': 'flutter_app_db',
'user' : 'postgres',
'password' : 'ADMIN'

};

//creamos una instancia a la bd utilizando la configuracion proporcionada

const db = pgp(databaseConfig);

//exportar la instancia de la bd
module.exports = db;