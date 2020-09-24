import 'package:flutter/material.dart';
import 'package:mytodoapp/Screens/welcomeScreen/components/welcome_customImage.dart';
import 'package:mytodoapp/Screens/welcomeScreen/components/welcome_custom_textfield.dart';
import 'package:mytodoapp/Screens/welcomeScreen/components/welcone_custom_buttons.dart';
import 'package:mytodoapp/Screens/welcomeScreen/log_in.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white12,
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        child: CustomWelcomeImage(
                            'assests/Images/register_logo.png', 80)),
                    Container(
                      width: double.infinity,
                      height: 340,
                      decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                              color: Colors.teal,
                              width: 3,
                            ),
                            bottom: BorderSide(
                              color: Colors.teal,
                              width: 3,
                            )),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomWelcomeTextField('Email-Id', Icons.email,
                              TextInputType.emailAddress, 250, false),
                          CustomWelcomeTextField('Password', Icons.lock,
                              TextInputType.emailAddress, 250, true),
                          CustomWelcomeTextField('Confirm Password', Icons.lock,
                              TextInputType.emailAddress, 250, true),
                          CustomButtons('Register', LogIn()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
