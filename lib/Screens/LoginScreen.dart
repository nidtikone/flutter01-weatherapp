import'package:flutter/material.dart';
import '../Components/textfield.dart';
import '../Constants.dart' as constant;
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constant.textPrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child:Container()),
           Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg'),
            textfield(text: 'email', isPassword: false),
          textfield(text: 'Password', isPassword: true),
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
                  onPressed: (){}, child: Text('Login',
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
}

