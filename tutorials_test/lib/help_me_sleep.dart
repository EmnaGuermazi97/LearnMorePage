import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'screens/constants.dart';
import 'screens/diet_recommendation.dart';
import 'screens/meditation.dart';
import 'package:flutter/widgets.dart';

import 'widgets.dart';

void main() => runApp(HelpMeSleep());

class HelpMeSleep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tips & Tricks',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and width of our device
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[300],
        leading: Container(),
        title: Text('Tips & Trics'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(),
      body: Stack(
        children: <Widget>[
          Container(
            //here the height of the container is 45% of our total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Colors.cyan[100],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Say Goodbye to bad quality sleep !! ",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.display1.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.cyan[600],
                            fontSize: 30,
                          ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        icon: SvgPicture.asset("assets/icons/search.svg"),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Diet recommendation",
                          svgSrc: "assets/icons/Hamburger.svg",
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DietRecommendation();
                            }));
                          },
                        ),
                        CategoryCard(
                          title: "Excercices for a better sleep",
                          svgSrc: "assets/icons/Excrecises.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Meditation",
                          svgSrc: "assets/icons/Meditation.svg",
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Meditation();
                            }));
                          },
                        ),
                        CategoryCard(
                          title: "Relaxing Music",
                          svgSrc: "assets/icons/yoga.svg",
                          press: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
