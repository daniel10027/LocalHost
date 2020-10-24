import 'package:Localhost/pages/components/house_grid.dart';
import 'package:Localhost/pages/components/utilitaire.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation:  0,
        title: Text("LocalHost", 
        style:  SupHeading
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Host disponible",
              style:  MainHeading
              ),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: HouseGrid(),
            )
        ],

      ),
    );
  }
}
