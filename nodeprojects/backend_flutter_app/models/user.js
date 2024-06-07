// importar la conf de la bd 

const db = require("../config/config");

//crea un objeto vacio llamado USER
const User = {};

//define un metodo llamado getAll

User.getAll = () => {
  // construir una consulta sql para seleccionar todos los registros

  const sql = `SELECT * FROM users` ;

  return db.manyOrNone(sql);
};

//funcion para crearun nuevp usuaro

User.create = (user) => {

  const sql = `INSERT INTO users
  (
    email,
    name,
    lastname,
    phone,
    image,
    password,   
    created_as,
    update_as
    
  )
  
  VALUES($1, $2, $3, $4, $5, $6, $7, $8) RETURNING id
  `;

  return db.oneOrNone(sql, [
    user.email,
    user.name,
    user.lastname,
    user.phone,
    user.image,
    user.password,
    new Date(),
    new Date(),


    ]);

  };

module.exports = User;      
