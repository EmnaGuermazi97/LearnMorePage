import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'services/authentication.dart';
import 'widgets.dart';




class HomePage extends StatefulWidget {
   HomePage({Key key, this.auth, this.userId, this.logoutCallback})
      : super(key: key);

  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final String userId;
  
  @override
  _HomePageState createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
       /*   appBar: new AppBar(
          title: new Text('Home'),
          centerTitle: true,
       
        ),*/
      
        backgroundColor: Color(0xffeaf6ff),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  (navigationButton(context, 'Connect Watch',
                      img: 'assets/images/bluetooth.png')),
                  navigationButton(context, 'Learn More',
                      img: 'assets/images/learn.png',
                      routeName: '/learnMorePage'),
                  navigationButton(context, 'Help Me Sleep',
                      img: 'assets/images/help.png',
                      routeName: '/help_me_sleep'),
                  navigationButton(context, 'Insomnia Sleep Index',
                      img: 'assets/images/isi.png',routeName:'/ISIPage' ),
                     
                ]),
          ),
        ),
        bottomNavigationBar: customNavBar(context, 0),
      ),
    );
  }

}
