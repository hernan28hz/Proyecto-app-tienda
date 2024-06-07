import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutterapp/src/pages/register/register_controller.dart';

import '../../utils/my_colors.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {

  RegisterController _con = new RegisterController();
  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       child: Stack(
         children: [
           Positioned(
               top: -80,
               left: -100,
               child: _circleLogin()
           ),
           Positioned(
               top: 60,
               left: 16,
               child: _textRegister()
           ),
           Positioned(
             top: 56,
             left: -5,
             child: _iconBack(),
           ),

           Container(
             margin: EdgeInsets.only(top: 150),
             width: double.infinity,
             child: SingleChildScrollView(
               child: Column(
                 children: [
                   SizedBox(height: 10),
                   _textFielEmail(),
                   _textFielName(),
                   _textFielLastName(),
                   _textFielPhone(),
                   _textFielPassword(),
                   _textFielConfirmPassword(),
                   _buttonLogin(),
                   _iconBack()

                 ],
               ),
             )
           )
         ],
       ),
     ),
    );
  }
  Widget _circleLogin() {
    return Container(
      width: 240,
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: MyColors.primaryColor,
      ),
    );
  }
  Widget _textRegister() {
    return const Text(
      'REGISTER',
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
    );
  }
  Widget _textFielEmail() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 800,
      ),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
          decoration: BoxDecoration(
              color: MyColors.primaryOpacityColor,
              borderRadius: BorderRadius.circular(30)),
          child: TextField(
            controller: _con.emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Correo electronico',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
                hintStyle: TextStyle(
                  color: MyColors.primaryColorDark,
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: MyColors.primaryColorDark,
                ),
              ))),
    );
  }
  Widget _textFielName() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 800,
      ),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
          decoration: BoxDecoration(
              color: MyColors.primaryOpacityColor,
              borderRadius: BorderRadius.circular(30)),
          child: TextField(
              controller: _con.nameController,
              decoration: InputDecoration(
                hintText: 'Nombre',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
                hintStyle: TextStyle(
                  color: MyColors.primaryColorDark,
                ),
                prefixIcon: Icon(
                  Icons.person,
                  color: MyColors.primaryColorDark,
                ),
              ))),
    );
  }
  Widget _textFielLastName() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 800,
      ),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
          decoration: BoxDecoration(
              color: MyColors.primaryOpacityColor,
              borderRadius: BorderRadius.circular(30)),
          child: TextField(
              controller: _con.lastnameController,
              decoration: InputDecoration(
                hintText: 'Apellido',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
                hintStyle: TextStyle(
                  color: MyColors.primaryColorDark,
                ),
                prefixIcon: Icon(
                  Icons.person,
                  color: MyColors.primaryColorDark,
                ),
              ))),
    );
  }

  Widget _textFielPhone() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 800,
      ),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
          decoration: BoxDecoration(
              color: MyColors.primaryOpacityColor,
              borderRadius: BorderRadius.circular(30)),
          child: TextField(
              controller: _con.phoneController,
              decoration: InputDecoration(
                hintText: 'Telefono',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
                hintStyle: TextStyle(
                  color: MyColors.primaryColorDark,
                ),
                prefixIcon: Icon(
                  Icons.phone,
                  color: MyColors.primaryColorDark,
                ),
              ))),
    );
  }

  Widget _textFielPassword() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 800,
      ),

      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
          decoration: BoxDecoration(
              color: MyColors.primaryOpacityColor,
              borderRadius: BorderRadius.circular(30)),
          child: TextField(
              controller: _con.passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Contraseña',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
                hintStyle: TextStyle(
                  color: MyColors.primaryColorDark,
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  color: MyColors.primaryColorDark,
                ),
              ))),
    );
  }

  Widget _textFielConfirmPassword() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 800,
      ),

      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
          decoration: BoxDecoration(
              color: MyColors.primaryOpacityColor,
              borderRadius: BorderRadius.circular(30)),
          child: TextField(
              controller: _con.confirmPasswordlController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirmar Contraseña',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
                hintStyle: TextStyle(
                  color: MyColors.primaryColorDark,
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  color: MyColors.primaryColorDark,
                ),
              ))),
    );
  }
  Widget _buttonLogin(){
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 800,
      ),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: ElevatedButton(
          onPressed: _con.register,
          child: Text('REGISTRARSE'),
          style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              ),
              padding: EdgeInsets.symmetric(vertical: 15)
          ),
        ),

      ),
    );

  }

  Widget _iconBack(){
    return IconButton(
        onPressed: (){},
        icon: Icon(Icons.arrow_back_ios, color: Colors.white)

    );

  }
}
  