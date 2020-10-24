import 'dart:io';
import 'package:Localhost/data/data.dart';
import 'package:Localhost/ecrans/Welcome/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Localhost",
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<SliderModel> slides = new List<SliderModel>();
  int currentIndex = 0;
  PageController pageController = new PageController(initialPage: 0);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides = getSlides();
  }
Widget pageIndexIndicator(bool isCurrentPage){

  return Container(
    margin: EdgeInsets.symmetric(horizontal : 2.0),
    height: isCurrentPage ? 10.0 : 6.0 ,
    width:  isCurrentPage ? 10.0 : 6.0 ,
    decoration: BoxDecoration(
    color: isCurrentPage ? Colors.indigo : Colors.indigo[300],
    borderRadius: BorderRadius.circular(12)
      
    ),
  );
   
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      body: PageView.builder(
        controller: pageController,
        itemCount: slides.length,
        onPageChanged: (val){
          setState(() {
            currentIndex = val;
          });
        },
        itemBuilder: (context, index){
          Size size = MediaQuery.of(context).size;
            return SliderTile(
            ImageAssetPath: slides[index].getImageAssetPath(),
            title:  slides[index].getTitle(),
            desc: slides[index].getDesc(),
          
          );
        }),
        bottomSheet: currentIndex != slides.length - 1 ? Container(
          height: Platform.isIOS ? 70:60,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children : <Widget>[
              GestureDetector(
                onTap: (){
                  pageController.animateToPage(slides.length - 1, duration: Duration(milliseconds: 400), curve: Curves.linear);
                },
                child: Text("Skip",
                style: TextStyle(
                  color: Colors.indigo
                ),)
              ),
              Row(
                children: <Widget>[
                 for (int i = 0; i < slides.length ; i++) currentIndex == i  ?pageIndexIndicator(true) : pageIndexIndicator(false)
                ]
              ),
               GestureDetector(
                onTap: (){
                   pageController.animateToPage(currentIndex + 1 , duration: Duration(milliseconds: 400), curve: Curves.linear);
                },
                child: Text("Next",
                style: TextStyle(
                  color: Colors.indigo
                ),))
              ,
            ],
          ),

        ) :  Container(
          alignment:  Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: Platform.isIOS ? 70:60,
          color:  Colors.indigo[500],
          child: ClipRRect(
            borderRadius: BorderRadius.circular(29),
              child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical:20, horizontal:40),
                    color: Colors.indigo,
                    onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context){
                      return WelcomeScreen();
                    }
                    ))
                ;},
                   child: Text(
                            "LET'S GO",
                            style: TextStyle(
                                    color:  Colors.white,
                                    fontWeight: FontWeight.w600
                                  ),
                           ),
                      ),
                  ) 
         ),
        );
      }
}

class SliderTile extends StatelessWidget {

  String ImageAssetPath, title, desc;
  SliderTile({this.ImageAssetPath, this.title, this.desc });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(

      color:  Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children : <Widget>[
          
           Image.asset(ImageAssetPath),
           SizedBox(height: 20,),
           Text(title, style: TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.w500
           )),
           SizedBox(height: 12,),
           Text(desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16
              ),),
           
        ],
      ),
    );
  }
}