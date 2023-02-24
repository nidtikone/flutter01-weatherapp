import 'package:flutter/material.dart';
import '../Constants.dart' as constant;
class textfield extends StatelessWidget {
  final String text;
  final bool isPassword;
  const textfield({
    super.key, required this.text, required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        style: TextStyle(
          color: constant.textSec
        ),
        obscureText: isPassword,
        obscuringCharacter: '%',
        decoration: InputDecoration(

            hintText: text,
            hintStyle: TextStyle(
              color: constant.textSec,
              fontWeight: FontWeight.w500,
              fontSize: 30.0,
              fontStyle: FontStyle.italic,

            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: constant.textSec,
                    width: 2,
                    style: BorderStyle.solid,
                )

            )

        ),
      ),
    );
  }
}

