import 'dart:js';

import'package:flutter/material.dart';
import '../Components/textfield.dart';
import '../Constants.dart' as constant;
import 'package:firebase_auth/firebase_auth.dart';

import 'mainscreen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late String email, password;
  @override
  Widget build(BuildContext context) {
    final _auth =FirebaseAuth.instance;
    return Scaffold(
      backgroundColor: constant.textPrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child:Container()),
           Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg'),
            textfield(text: 'email', isPassword: false, onChanged: (value) {
              email = value;
    },),
          textfield(
              text: 'Password',
              isPassword: true,
          onChanged: (value){
                password=value;
    }),
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Container(
              width: 180,
              color: constant.textSec,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(
                      width: 2.0,
                      color: constant.textPrimary,
                    )
                  )
                ),
                  onPressed: ()async{},
                  child: Text('Login',
                style: TextStyle(
                  fontSize: 40.0,
                  color: constant.textPrimary,


              ),
              )),
            ),
          ),
          Expanded(child: Container())

        ],

      ),
    );

  }

  _pushToNextScreen(){
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) =>MainScreen())
  }
}

