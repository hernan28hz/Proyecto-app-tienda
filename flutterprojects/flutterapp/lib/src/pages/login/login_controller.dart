import 'package:flutter/material.dart';

class loginController{
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  late BuildContext context;

  Future<void> init(BuildContext context) async {
    this.context = context;
  }
  void login(){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    print('Email: $email');
    print('Password: $password');
  }
  void gouToRegisterPage(){
    Navigator.pushNamed(context, 'register');
  }
}
