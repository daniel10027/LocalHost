import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';




class Background extends StatelessWidget {
  final Widget child;
  const Background({

    Key key,
  @required this.child
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height:  size.height,
      child:  Stack(
        alignment : Alignment.center,
        children: <Widget>[

          Positioned(
            top: 0,
            left: 0,
            child: 
                SvgPicture.asset(
                    "assets/images/screens/cabine1.svg",
                    width: size.width * 0.30,
                    )
          ),

           Positioned(
            bottom: 0,
            right: 0,
            child: 
                SvgPicture.asset(
                    "assets/images/screens/cabine2.svg",
                    width: size.width * 0.45,
                    )
          ),
           child,
        ],
        ),
    );
  }
}