import 'package:Localhost/components/already_have_an_account_check.dart';
import 'package:Localhost/components/rounded_button.dart';
import 'package:Localhost/components/rounded_input_field.dart';
import 'package:Localhost/components/rounded_password_field.dart';
import 'package:Localhost/ecrans/Login/components/background.dart';
import 'package:Localhost/ecrans/SingnUp/signup.dart';
import 'package:Localhost/pages/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "CONNEXION",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/images/screens/login.svg",
                height: size.height * 0.25,
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "Adresse Email",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onchange: (value) {},
              ),
              RoundedButton(
                text: "LOGIN",
                press: ()  {Navigator.push(context, MaterialPageRoute(builder: (context){
                        return DashboardScreen();
                      }
                      ))
                  ;}
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {Navigator.push(context, MaterialPageRoute(builder: (context){
                        return SignUpScreen();
                      }
                      ))
                  ;}
              ),
            ]),
      ),
    );
  }
}
