import 'package:Localhost/components/rounded_button.dart';
import 'package:Localhost/ecrans/Login/login.dart';
import 'package:Localhost/ecrans/Welcome/Components/background.dart';
import 'package:Localhost/ecrans/SingnUp/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Bienvenue chez Localhost",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
             SvgPicture.asset(
              "assets/images/screens/welcome.svg",
              height: size.height * 0.3,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Connexion",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Inscription",
              color: Colors.indigo[300],
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
