
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/commongetures/fivecmn.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/commongetures/fourcmn.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/commongetures/onecommon.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/commongetures/sixcmn.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/commongetures/threecmn.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/commongetures/twocommon.dart';
import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../homepagelearn/model/category.dart';

class cmnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //  brightness: Brightness.light,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      body:


      Container(
        width: double.infinity,


        child:


        Column(
          children: <Widget>[
            DetailsImage(categories[5].image, height/5, height/5, Theme.of(context).scaffoldBackgroundColor,5),

            SizedBox(height: 15,),
            Text("Cryptic Common Gestures",style:GoogleFonts.comicNeue(fontSize: height/25,color: Colors.purple,fontWeight: FontWeight.bold),) ,
            SizedBox(height: 15,),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight:  Radius.circular(40),topLeft:  Radius.circular(40)),
                  color: Colors.purple.withOpacity(0.2),
                ),
                child:
                ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: <Widget>[

                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // Text("Course Content", style: kTitleTextStyle),
                                SizedBox(height: 0),
                                CourseContent(
                                  number: "01",
                                  duration: 5,
                                  title: "The Head Nod",
                                  isDone: true,
                                  widget: onecmn(),
                                ),
                                CourseContent(
                                  number: '02',
                                  duration: 4,
                                  title: "Basic Head Positions",
                                  isDone: true,
                                  widget: twocmn(),

                                ),
                                CourseContent(
                                  number: '03',
                                  duration: 3,
                                  title: "The Head Shrug",
                                  isDone: true,
                                  widget: threecmn(),

                                ),
                                CourseContent(
                                  number: '04',
                                  duration: 4,
                                  title: "The Legs-Spread",
                                  isDone: true,
                                  widget: fourcmn(),
                                ),

                                CourseContent(
                                  number: '05',
                                  duration: 3,
                                  title: "Showing readiness",
                                  isDone: true,
                                  widget: fivecmn(),
                                ),

                                CourseContent(
                                  number: '06',
                                  duration: 2,
                                  title: "Summary",
                                  isDone: true,
                                  widget: sixcmn(),
                                ),





                              ],
                            ),
                          ),

                        ],
                      ),

                    ]),



              ),
            ),
          ],
        ),





      ),



    );
  }
}

