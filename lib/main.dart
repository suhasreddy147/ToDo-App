import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytodoapp/Screens/welcomeScreen/log_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LogIn();
  }
}
