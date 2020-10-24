import 'package:flutter/foundation.dart';

class HouseItem {
  final String nom;
  final String description;
  final double prix;
  final String imagePath;
  final String superficie;
  final String pieces;
  final String status;
  final String localite;


  HouseItem({
   
   @required  this.nom,
   @required  this.description,
   @required  this.prix,
   @required  this.imagePath,
   @required  this.superficie,
   @required  this.pieces,
   @required  this.status,
   @required  this.localite,
  });
}

HouseList allHouses = HouseList( houses: [

  HouseItem(
    nom: "Villa Basse 10",
    description: "Villa basse 5 étoiles 10 pieces avec piscine",
    prix: 3700,
    imagePath: "assets/images/houses/h6.jpeg",
    superficie: "125",
    pieces: "10",
    status: "Vente",
    localite: "Abidjan"
  ),

  HouseItem(
    nom: "Villa Basse 1",
    description: "Villa basse 5 étoiles 10 pieces avec piscine",
    prix: 3700,
    imagePath: "assets/images/houses/h3.jpeg",
    superficie: "125",
    pieces: "10",
    status: "Vente",
    localite: "Abidjan"
  ),

  HouseItem(
    nom: "Villa Basse 2",
    description: "Villa basse 5 étoiles 10 pieces avec piscine",
    prix: 3700,
    imagePath: "assets/images/houses/h10.jpeg",
    superficie: "125",
    pieces: "10",
    status: "Vente",
    localite: "Abidjan"
  ),

  HouseItem(
    nom: "Villa Basse 3",
    description: "Villa basse 5 étoiles 10 pieces avec piscine",
    prix: 3700,
    imagePath: "assets/images/houses/h6.jpeg",
    superficie: "125",
    pieces: "10",
    status: "Vente",
    localite: "Abidjan"
  ),

  HouseItem(
    nom: "Villa Basse 4",
    description: "Villa basse 5 étoiles 10 pieces avec piscine",
    prix: 3700,
    imagePath: "assets/images/houses/h10.jpeg",
    superficie: "125",
    pieces: "10",
    status: "Vente",
    localite: "Abidjan"
  ),
  HouseItem(
    nom: "Villa Basse 5",
    description: "Villa basse 5 étoiles 10 pieces avec piscine",
    prix: 3700,
    imagePath: "assets/images/houses/h6.jpeg",
    superficie: "125",
    pieces: "10",
    status: "Vente",
    localite: "Abidjan"
  ),

  HouseItem(
    nom: "Villa Basse 6",
    description: "Villa basse 5 étoiles 10 pieces avec piscine",
    prix: 3700,
    imagePath: "assets/images/houses/h3.jpeg",
    superficie: "125",
    pieces: "10",
    status: "Vente",
    localite: "Abidjan"
  ),

  HouseItem(
    nom: "Villa Basse 7",
    description: "Villa basse 5 étoiles 10 pieces avec piscine",
    prix: 3700,
    imagePath: "assets/images/houses/h10.jpeg",
    superficie: "125",
    pieces: "10",
    status: "Vente",
    localite: "Abidjan"
  ),

  HouseItem(
    nom: "Villa Basse 8",
    description: "Villa basse 5 étoiles 10 pieces avec piscine",
    prix: 3700,
    imagePath: "assets/images/houses/h3.jpeg",
    superficie: "125",
    pieces: "10",
    status: "Vente",
    localite: "Abidjan"
  ),

  HouseItem(
    nom: "Villa Basse 9",
    description: "Villa basse 5 étoiles 10 pieces avec piscine",
    prix: 3700,
    imagePath: "assets/images/houses/h6.jpeg",
    superficie: "125",
    pieces: "10",
    status: "Vente",
    localite: "Abidjan"
  ),


]);

class HouseList{
  List<HouseItem> houses;

  HouseList({this.houses});
}
