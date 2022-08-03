import 'package:day24/data/jobData.dart';
import 'package:day24/widget/bottomNavBar.dart';
import 'package:day24/widget/home_appBar.dart';
import 'package:day24/widget/jobDetails.dart';
import 'package:day24/widget/searchBar.dart';
import 'package:day24/widget/tagList.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Container()
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Color(0xffc1f5f7).withOpacity(0.3),
                  )
              )
            ],

          ),
          Column(
            children: [
              HomeAppBar(),
              SearchBar(),
              TagList(),
              JobDetails(),
            ],
          )

        ],

      ),
      floatingActionButton:FloatingActionButton( //Floating action button on Scaffold
        backgroundColor: Color(0xfffed409),
        onPressed: (){
          //code to execute on button press
        },
        child: Icon(Icons.add), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button position to center
    bottomNavigationBar:  BottomAppBar( //bottom navigation bar on scaffold
      color:Colors.white,
      shape: CircularNotchedRectangle(), //shape of notch
      notchMargin: 5, //notche margin between floating button and bottom appbar
      child: Row( //children inside bottom appbar
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(icon: Icon(Icons.home, color: Colors.black87.withOpacity(0.5),), onPressed: () {},),
          IconButton(icon: Icon(Icons.backpack, color: Colors.black87.withOpacity(0.5),), onPressed: () {},),
          SizedBox(width: 10,),
          IconButton(icon: Icon(Icons.ad_units, color: Colors.black87.withOpacity(0.5),), onPressed: () {},),
          IconButton(icon: Icon(Icons.account_circle, color: Colors.black87.withOpacity(0.5),), onPressed: () {},),
        ],
      ),
    ),
    );
  }
}
