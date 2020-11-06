import 'package:flutter/material.dart';
import 'package:mytodoapp/Screens/toDoScreen/frontend/dashboard.dart';
import 'package:mytodoapp/Screens/welcomeScreen/components/welcome_customImage.dart';
import 'package:mytodoapp/Screens/welcomeScreen/components/welcome_custom_Text.dart';
import 'package:mytodoapp/Screens/welcomeScreen/components/welcome_custom_textfield.dart';
import 'package:mytodoapp/Screens/welcomeScreen/components/welcome_login_google.dart';
import 'package:mytodoapp/Screens/welcomeScreen/components/welcone_custom_buttons.dart';
import 'package:mytodoapp/Screens/welcomeScreen/register.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white12,
            body: Center(
              child: SingleChildScrollView(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomWelcomeImage(
                      'assests/Images/login_screen_logo.png', 110),
                  CustomWelcomeTextField('Email-ID', Icons.email,
                      TextInputType.emailAddress, 300, false),
                  SizedBox(height: 15),
                  CustomWelcomeTextField('Password', Icons.lock,
                      TextInputType.visiblePassword, 300, true),
                  CustomWelcomeText(),
                  SizedBox(height: 25),
                  CustomButtons('Sign-In', MainDashboard()),
                  CustomButtons('Create Account', RegisterScreen()),
                  CustomSignInGoogle(),
                ],
              )),
            )));
  }
}
