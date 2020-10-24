import 'package:Localhost/pages/components/house_detail.dart';
import 'package:Localhost/pages/components/utilitaire.dart';
import 'package:flutter/material.dart';
import 'package:Localhost/data/house.dart';

class HouseGrid extends StatelessWidget {
  const HouseGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allHouses.houses.length ,
      itemBuilder:  (ctx,i) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (ctx) => HouseDetail(

           nom:  allHouses.houses[i].nom,
           localite:   allHouses.houses[i].localite,
           prix:     allHouses.houses[i].prix,
           description:     allHouses.houses[i].description,
           superficie:     allHouses.houses[i].superficie,
           status:      allHouses.houses[i].status,
           imagePath:      allHouses.houses[i].imagePath,
           pieces:      allHouses.houses[i].pieces,


                 )
               )
              );
          },
                  child: Container(
            margin: EdgeInsets.only(
              top: i.isEven ? 0:15,
              bottom: i.isEven ? 15:0
              
              ) ,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.indigo,
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ]
            ),
            child: Column(
                 children: [

                   Hero(
                     tag: allHouses.houses[i].nom,
                                        child: Image.asset(
                       allHouses.houses[i].imagePath
                       ),
                   ),

                   Text(allHouses.houses[i].nom,
                         style: BasicHeading,
                         ),

                   Text((allHouses.houses[i].prix).toString(),
                          style: SupHeadingPrice,
                     ),
                 ],
            )
          ),
        ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2
      ),
    );
  }
}