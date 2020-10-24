import 'package:flutter/material.dart';


class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;

  const AlreadyHaveAnAccountCheck({
    Key key, 
    this.login = true, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Text(
        login ? "Pas encore  de compte ?" : "J'ai déja un compte ",
         style: TextStyle(color: Colors.indigo)),
      GestureDetector(
        onTap: press,
        child: Text(
          login ? "Sing Up" : "Sign In",
            style: TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
            )),
      )
    ]);
  }
}
