import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function  press;
  const SocialIcon({
    Key key, this.iconSrc, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color:  Colors.indigo
                  ),
                  shape:  BoxShape.circle,
                  ),
                  child: SvgPicture.asset(iconSrc ,
                  height: 15,
                  width:  15,),
      ),
    );
  }
} 
