//importar el modelo del usuario
const User = require('../models/user');


module.exports = {
   //definir getall como una funcion asincronica
   // que toma tres parametros solicitud,   RESPUESTA Y SIGUIENTE

    async getAll(req, res, next) {

        try {

            // intentar obtener todos los usuarios utilizando el metodo gettall
            const data = await User.getAll();
            console.log(`Usuarios: ${data}`);

            return res.status(201).json(data);

        } catch (error) {
            console.log(`Error: ${error}`);

            //enviar una respuesta json con un estado 501
            return res.status(501).json({
                success : false,
                message: "error al obtener los usuarios",

            });


        }

        },

        async register(req, res, next) {
            try {
                //obtener los datos del usuario del cuerpo de la solicitud

                const user = req.body;

                //crear un nuevo usuario en la bd
                const data = await User.create(user);

                //devolvemos una respuesta exitosa
                return res.status(201).json({
                    success : true,
                    message: "el registro se realizo correctamente",
                    data: data.id,
                });

            } catch (error) {
                console.log(`Error: ${error}`);
                return res.status(500).json({
                    success : false,
                    message: "error con el registro del usuario",
                    error: error,
            });
        }
    }
    
};