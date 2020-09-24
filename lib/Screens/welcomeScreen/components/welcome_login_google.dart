import 'package:flutter/material.dart';

class CustomSignInGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
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
