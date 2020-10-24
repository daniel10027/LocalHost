import 'package:Localhost/pages/components/utilitaire.dart';
import 'package:flutter/material.dart';


class CardBox  extends StatelessWidget {
  final double prix;
  final String nom;
  final String nom2;
  const CardBox ({Key key, this.prix, this.nom, this.nom2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: prix==null ?65:100,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color:  Colors.indigo[300],
        width: 1
      ),
      borderRadius: BorderRadius.circular(10),
      ),
      child: prix==null ? Column(
        children: [
         Text(nom, 
         style: BasicHeading,),

         SizedBox(height: 5),

          
           Text(nom2 , style: SupHeadingPrice,),
       ]
      ) : 
      Column(
       children: [
         Text(nom, 
         style: BasicHeading,),

         SizedBox(height: 5),

         prix==null? Text(nom2, style: SupHeadingPrice) : Text((prix).toString(),
         style: SupHeadingPrice,),

           SizedBox(height: 5),
           Text(nom2),
       ]
      ),
    );
  }
}