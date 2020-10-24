import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class Background extends StatelessWidget {
  const Background({
    Key key,
    @required this.size,
    @required this.child,
  }) : super(key: key);

  final Size size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return Container(
     height: size.height,
     width: double.infinity,
     
     child: Stack(
       alignment:  Alignment.center,
       children: <Widget> [
          Positioned(
            bottom: 0,
            right: 0,
            child: 
                SvgPicture.asset(
                    "assets/images/screens/sign1.svg",
                    width: size.width * 0.3,
                    )
          ),

          Positioned(
            bottom: 0,
            left: 0,
            child: 
                SvgPicture.asset(
                    "assets/images/screens/sign2.svg",
                    width: size.width * 0.3,
                    )
          ),
        child,
        ],
     ),
    );
  }
}