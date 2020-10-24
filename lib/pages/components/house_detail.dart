import 'package:Localhost/pages/components/box.dart';
import 'package:Localhost/pages/components/utilitaire.dart';
import 'package:flutter/material.dart';


class HouseDetail extends StatelessWidget {
   final String nom;
  final String description;
  final double prix;
  final String imagePath;
  final String superficie;
  final String pieces;
  final String status;
  final String localite;
  const HouseDetail({Key key, this.nom, this.description, this.prix, this.imagePath, this.superficie, this.pieces, this.status, this.localite}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [ 
          IconButton(
            onPressed: null,
          icon: Icon(Icons.bookmark,
          size: 30,
          color: Colors.indigo,
          ),
          ),

          IconButton(
            onPressed: null,
          icon: Icon(Icons.share,
          size: 30,
          ),
          ),
        ],
      ),
      body: Column(
        children: [
          Text(nom,
          style: MainHeading),
          Text(status,
          style: BasicHeading),

          Hero(
            tag:nom,
            child: Image.asset(imagePath)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

            CardBox(
              nom: "12 Mois",
              prix: prix*12,
              nom2:"Francs Cfa"

            ),
            CardBox(
              nom: "6 Mois",
              prix: prix*6,
              nom2:"Francs Cfa"

            ),

            CardBox(
              nom: "1 Mois",
              prix: prix*1,
              nom2:"Francs Cfa"

            ),

            ]
          ),
          SizedBox(height:20),
          Text("SPECIFICATIONS",
          style:  TextStyle(
            color: Colors.indigo,
            fontWeight: FontWeight.bold,
            fontSize: 20 
          ),
          ),
          SizedBox(height:20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

            CardBox(
              nom: "Superficie",
             
              nom2: superficie

            ),
            CardBox(
              nom: "Pièce(s)",
             
              nom2:pieces

            ),

            CardBox(
              nom: "Localité",
         
              nom2:localite

            ),

            ]
          ),
          SizedBox(height:20),
          RaisedButton(
            shape: RoundedRectangleBorder (
              borderRadius:  BorderRadius.circular(10)
            ),
            disabledColor:  Colors.indigo,
            onPressed: null, 
            child: Text("Visiter", 
            style: TextStyle(
              color: Colors.white,
              fontSize: 25, 
            ),))
        ],
      ),
    );
}
}