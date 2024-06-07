import 'package:flutter/material.dart';

class RegisterController{

  late BuildContext context;

  TextEditingController emailController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController lastnameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordlController = new TextEditingController();

  Future<void> init(BuildContext context) async{
    this.context = context;
  }

  void register(){

    String email =  emailController.text.trim();
    String name =   nameController.text.trim();
    String lastname =  lastnameController.text.trim();
    String phone =  phoneController.text.trim();
    String password =  passwordController.text.trim();
    String confirmPassword= confirmPasswordlController.text.trim();

    print(email);
    print(name);
    print(lastname);
    print(phone);
    print(password);
    print(confirmPassword);
  }


}