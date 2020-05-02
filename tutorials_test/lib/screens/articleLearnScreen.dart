import 'package:flutter/material.dart';
import 'package:tutorials_test/models/learnMoreArticles.dart';
import 'package:tutorials_test/main.dart';

class ArticleLearnScreen extends StatefulWidget {
  final ArticleLearnMore article;
  final def =
      'Sleep is: \n\nA condition of body and mind which typically recurs for several hours every night, in which the nervous system is inactive, the eyes closed, the postural muscles relaxed, and consciousness practically suspended.\n\nSleep is the mother of all health issues.  \n Most people do not understand what the lack of sleep or poor sleep efficiency is doing to them. \n Impaired sleep prevents your body from doing its nightly system recharge which doesn’t just cause fatigue but has been shown to: \n\n - Slow down your metabolism \n -impact weight and fat gain \n -weaken your immune system \n - impair your memory and ability to think clearly, reason and problem solving \n - hormone imbalances \n - accelerates aging process \n - worsen current health issues like heart ';
  ArticleLearnScreen({this.article});

  @override
  _ArticleLearnScreenState createState() => _ArticleLearnScreenState();
}

class _ArticleLearnScreenState extends State<ArticleLearnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: <Widget>[
        Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right:20.0,top:60.0,left:20.0,bottom:20.0),
              child: Container(
                  height: 450.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        //this is the container that needs to be scrollable
                        color: Colors.white,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 1.0,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:60.0,left: 20.0),
                        child: Container(
                            height: 300.0,
                            color: Colors.white,
                            
                              child: Text(
                                widget.article.titleA,
                                style: TextStyle(
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            
                            ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 100.0, right: 20.0, left: 20.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image(
                                image: AssetImage(widget.article.imageUrlA),
                                height: 350.0)),
                      ),
                    ],
                  )),
            ),
          ],
        ),
        Padding(
          //this is the structure of a paragraph
            padding: const EdgeInsets.only(
                top: 30.0, right: 10.0, left: 10.0, bottom: 30.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.0),color: Colors.white)
              ,
              child: Stack(
                
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:40.0,left: 8.0),
                    child: Text(
                      "TitreTitreTitreTitreTitre",
                      style: TextStyle(
                          
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1),
                    ),
                  ),
                       Padding(
                         padding: const EdgeInsets.only(top:120.0,right:10.0,left: 10.0,bottom: 20.0 ),
                         child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                    style: TextStyle(
                          
                          fontSize: 17.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.5),
                  ),
                       ),
              ],
              ),
            ))
      ]),
    ));
  }
}
