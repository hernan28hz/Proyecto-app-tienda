
const UsersController = require('../controllers/usersController');

module.exports = (app) => {
//definir una ruta get en api que utilice el metodo getall

app.get("/api/users/gettAll", UsersController.getAll);

//guardar datos
app.post("/api/users/create", UsersController.register);

};
