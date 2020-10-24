import 'package:Localhost/components/already_have_an_account_check.dart';
import 'package:Localhost/components/rounded_button.dart';
import 'package:Localhost/components/rounded_input_field.dart';
import 'package:Localhost/components/rounded_password_field.dart';
import 'package:Localhost/ecrans/Login/login.dart';
import 'package:Localhost/ecrans/SingnUp/components/background.dart';
import 'package:Localhost/ecrans/SingnUp/components/or_divider.dart';
import 'package:Localhost/ecrans/SingnUp/components/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Body extends StatelessWidget {
  final Widget child;
  const Body({Key key, 
  @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return Background(
      child:  SingleChildScrollView(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children : <Widget>[
            Text(
              "INSCRIPTION",
              style: TextStyle(fontWeight: FontWeight.bold),

              ),
            SizedBox(height: size.height * 0.03),
                SvgPicture.asset(
                "assets/images/screens/inscri.svg",
                height: size.height * 0.25,
              ),
              RoundedInputField(
                hintText: "Adresse Email",
                onChanged: (value) {},
                ),
              RoundedPasswordField( 
                onchange: (value) {},
              ),

              RoundedButton(
                text: "LOGIN",
                press: () {},
              ),
             
              
               SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {Navigator.push(context, MaterialPageRoute(builder: (context){
                        return LoginScreen();
                      }
                      ))
                  ;}
              ),
              OrDivider(),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcon(
                    iconSrc: "assets/icons/facebook.svg",
                    press : (){},
                  ),

                  SocialIcon(
                    iconSrc: "assets/icons/twitter.svg",
                    press : (){},
                  ),

                  SocialIcon(
                    iconSrc: "assets/icons/google-plus.svg",
                    press : (){},
                  ),
                ]
              )
          ]
        ),
      ),
    );
  }
}
