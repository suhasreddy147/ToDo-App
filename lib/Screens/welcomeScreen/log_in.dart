import 'package:flutter/material.dart';
import 'package:mytodoapp/Screens/toDoScreen/frontend/dashboard.dart';
import 'package:mytodoapp/Screens/welcomeScreen/components/welcome_customImage.dart';
import 'package:mytodoapp/Screens/welcomeScreen/components/welcome_custom_Text.dart';
import 'package:mytodoapp/Screens/welcomeScreen/components/welcome_custom_textfield.dart';
import 'package:mytodoapp/Screens/welcomeScreen/components/welcome_login_google.dart';
import 'package:mytodoapp/Screens/welcomeScreen/components/welcone_custom_buttons.dart';
import 'package:mytodoapp/Screens/welcomeScreen/register.dart';

class LogIn extends StatefulWidget{
  @override
  LoginPageState createState() => LoginPageState();
}
class LoginPageState extends State<LogIn> {
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
                  CustomButtons('Sign-In', MainDashboard(), ),
                  CustomButtons('Create Account', RegisterScreen()),
                  _googleSignInButton(),
                ],
              )),
            )));
  }
  Widget _signInButton(){

  }
  Widget _googleSignInButton() {
    return FlatButton(
      onPressed: () {
        signInWithGoogle().whenComplete(() {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return MainDashboard();
              },
            ),
         );
        });
      },
      minWidth: 300,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: const EdgeInsets.only(right: 5),
              constraints: BoxConstraints(maxHeight: 40),
              child: Image.asset('assests/Images/google_logo.png',
                  fit: BoxFit.cover)),
          Text(
            'Sign-in with Google',
            style: TextStyle(color: Colors.teal, fontSize: 15),
          )
        ],
      ),
    );
  }
}
