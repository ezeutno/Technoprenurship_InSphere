import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:slimy_card/slimy_card.dart';
import 'dart:math';
// import '../models/tabIcon_data.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  String datatext = "";
  GlobalKey _bottomNavigationKey = GlobalKey();

  Widget topCardWidget(String data, String teamcore, String quote) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              child: Text(data,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 20,
                      fontWeight: FontWeight.bold))),
          SizedBox(height: 15),
          Text(
            teamcore,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          SizedBox(height: 10),
          Text(
            quote,
            style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
        ]);
  }

  Widget bottomCardWidget(int amt) {
    if (_page == 1){
      setState((){
        datatext = "Invest Now! Only "+amt.toString()+" stocks left!!";
      });
    }else if(_page == 2){
      setState((){
        datatext =  "Around "+amt.toString()+" people!, \nintereseted in your IDEA!";
      });
    }else if (_page == 3){
      setState(() {
        datatext = "Contributors "+amt.toString()+" people!";
      });
    }
      return Text(
      datatext,
      style: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,);
    }

  Widget _buildBody(int condition) {
    if(condition == 0){
      return Container(
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
            children: <Widget>[
              Material(
                elevation: 4.0,
                shape: CircleBorder(),
                clipBehavior: Clip.hardEdge,
                child: Ink.image(
                  image: NetworkImage("https://www.biography.com/.image/t_share/MTE4MDAzNDEwNzg5ODI4MTEw/barack-obama-12782369-1-402.jpg"),
                  fit: BoxFit.cover,
                  width: 120.0,
                  height: 120.0,)
                ),
                SizedBox(
                  height:10,
                ),
              Container(
                child: Text(
                  "Hi! Obama.\nHow was your day today?",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900
                )
                ),
                  decoration: new BoxDecoration (
                  borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
                  color: Colors.blue
                ),
                padding: new EdgeInsets.fromLTRB(55.0, 32.0, 55.0, 32.0),
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  RaisedButton(
                    shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    side: BorderSide(color: Colors.red)),
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text("New Idea".toUpperCase(),
                        style: TextStyle(fontSize: 14)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                    shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    side: BorderSide(color: Colors.red)),
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text("new Investment".toUpperCase(),
                        style: TextStyle(fontSize: 14)),
                  ),
                ]
                ,),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                    Text(
                        "Highlights".toUpperCase(),
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.red
                          ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        child: Text(
                          "Investment Progress\n\n09:00 am 12/12/23\n'JUNGLE APP' Started !!!",
                          textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900
                        )
                        ),
                          decoration: new BoxDecoration (
                          borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
                          color: Colors.lightGreen
                        ),
                        padding: new EdgeInsets.fromLTRB(55.0, 15.0, 55.0, 15.0),
                      ),
                      SizedBox(
                        height: 2, 
                      ),
                      Container(
                        child: Text(
                          "Idea Progress\n\n08:17 pm 11/13/23\n\n'Teachable Learning'\n10 people were found !!!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900
                        )
                        ),
                          decoration: new BoxDecoration (
                          borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
                          color: Colors.deepOrange
                        ),
                        padding: new EdgeInsets.fromLTRB(55.0, 15.0, 55.0, 15.0),
                      ),
                      SizedBox(
                        height: 2, 
                      ),
                      Container(
                        child: Text(
                          "Team Progress\n\n07:12 am 13/12/23\nMARS PROJECT\nSPORISA has launched !!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900
                        )
                        ),
                          decoration: new BoxDecoration (
                          borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
                          color: Colors.purple
                        ),
                        padding: new EdgeInsets.fromLTRB(55.0, 15.0, 55.0, 15.0),
                      )
                  ],
                  )
                )
            ],
          ),
          )
          ),
        );
    } else {
      return Container(
            color: Colors.white,
            child : ListView(
              children: <Widget>[
                SlimyCard(
                  color: Colors.blueAccent,
                  topCardHeight: 150,
                  bottomCardHeight: 100,
                  borderRadius: 25,
                  topCardWidget: topCardWidget("Roalercoaster Extrime","MASUM JARON","Unimaginable ride of yourlife!"),
                  bottomCardWidget: bottomCardWidget(Random().nextInt(3178328)),
                ),
                SizedBox(height: 2,),
                SlimyCard(
                  color: Colors.lightBlueAccent,
                  topCardHeight: 150,
                  bottomCardHeight: 100,
                  borderRadius: 25,
                  topCardWidget: topCardWidget("Extrime App","JARON Ico","Push you to the limit!!"),
                  bottomCardWidget: bottomCardWidget(Random().nextInt(3178328)),
                ),
              ],
            ),
          );
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Image.asset(
              "assets/icon/hand_color.png",
              width:30,
              height:30,
            ),
            Image.asset(
              "assets/icon/idea_color.png",
              width:30,
              height:30,
            ),
            Image.asset(
              "assets/icon/together_color.png",
              width: 30,
              height: 30,
            ),
          ],
          color: Colors.blue,
          buttonBackgroundColor: Colors.blue,
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
          body: _buildBody(_page)
        );
  }
}