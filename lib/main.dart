import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytodoapp/Screens/toDoScreen/dashboard.dart';
import 'package:mytodoapp/Screens/welcomeScreen/log_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LogIn();
  }
}
