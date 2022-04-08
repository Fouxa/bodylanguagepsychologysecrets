import 'dart:async';

import 'package:bodylanguagepsychologysecrets/articles_philosophy/pages/explore_page.dart';
import 'package:bodylanguagepsychologysecrets/homepagelearn/homepage.dart';
 import 'package:bodylanguagepsychologysecrets/settings_page.dart';

import 'package:bodylanguagepsychologysecrets/test_screen.dart';
import 'package:flutter/material.dart';




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    //The whole Code is wrapped in DefaultTabController to make it Controlled via Tabs
    return
      Container(

        decoration: BoxDecoration(
            color: Colors.transparent
        ),
        child:
        DefaultTabController(
          length: 4,
          child: Scaffold(


            /*   appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),

          //CustomAppBar is wrapped under Theme(), so that CustomAppBar's canvasColor can be transparent and not the whole app's.

          child: Theme(
            data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
            child: CustomAppBar(),
          ),
        ),
        */


            body: Container(
              decoration: BoxDecoration(
                  color: Colors.transparent
              ),
              height: MediaQuery.of(context).size.height - 15,
              child: TabBarView(
                //TabBarView defines the area of TabPages

                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[

                  //   MapsPage(),
                  HomeScreen(),
                  //  MapsPage(),
                  testScreen(),

                  ExplorePage(),
                  settingsPage()



                ],
              ),
            ),

            //Bottom Tabs

            bottomNavigationBar:

            Container(

              decoration: BoxDecoration(

                  color:Theme.of(context).backgroundColor,
              ),

              child:
              TabBar(

                labelColor:  Colors.purple,
                //  labelColor: Theme.of(context).primaryColor,
                unselectedLabelColor: Colors.grey,
                //  unselectedLabelColor: Theme.of(context).accentColor,
                indicatorColor: Colors.green.withOpacity(0.0),
                labelPadding: EdgeInsets.all(5),
                tabs: <Widget>[
                  Tab(
                    // Explore Tab
                      icon: Icon(Icons.home_outlined,size: 30,)

                  ),

                  Tab(
                    // Profile Tab
                      icon: Icon(Icons.school,size: 30,)),

                  Tab(
                    // Profile Tab
                      icon: Icon(Icons.article_outlined,size: 30,)),

                  Tab(
                    // Profile Tab
                      icon: Icon(Icons.settings,size: 30,)),



                ],
              ),
            ),
          ),
        ),
      );
  }
}
