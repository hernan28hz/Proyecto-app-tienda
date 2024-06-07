//impor de las dependendencias nesesarias
const express = require('express');
const app = express();
const http = require('http');
const server = http.createServer(app);
const logger = require('morgan');
const cors = require('cors');

//declara las rutas
const users = require('./routes/usersRoutes');

//configurar el puerto

const port = process.env.PORT || 3000;

//configurar middleware

app.use(logger("dev")); // morgan para el registro de solicitudes htttp
app.use(express.json()); //analiza solicitudes con formato json

app.use(express.urlencoded({ extended: true,})
);


app.use(cors()); // habilita CORS para
app.disable("x-powered-by")//deshabilitar la informacion de la tecnologia utilizada en la cabeceras

//establecer el puerto en la app
app.set("port", port);

//lamar rutas
users(app)

//iniciar el servidor con ip del equipo 

server.listen(port, "192.168.1.4" || "localhost", function(){

    console.log("aplicacion de nodjs en el puerto "+port+ " iniciada.....");

});
