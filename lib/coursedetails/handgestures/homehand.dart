import 'package:bodylanguagepsychologysecrets/coursedetails/handgestures/fivehand.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/handgestures/fourhand.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/handgestures/onehand.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/handgestures/sevenhand.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/handgestures/sixhand.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/handgestures/twohand.dart';

import 'package:bodylanguagepsychologysecrets/coursedetails/handgestures/threehand.dart';
import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

import '../../homepagelearn/model/category.dart';


class DetailsScreen extends StatelessWidget {
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
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child:
        Column(
          children: <Widget>[

        DetailsImage(categories[0].image,height/5, height/5, Theme.of(context).scaffoldBackgroundColor,0),

            SizedBox(height: 15,),
            Text("Secret Of Hands",style:GoogleFonts.comicNeue(fontSize: height/25,color: Colors.purple,fontWeight: FontWeight.bold),) ,
            SizedBox(height: 15,),


            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight:  Radius.circular(40),topLeft:  Radius.circular(40)),
                  color: Colors.purple.withOpacity(0.2)
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
                                  title: "How to Detect Openness",
                                  isDone: true,
                                  widget: onehand(),
                                ),
                                CourseContent(
                                  number: '02',
                                  duration: 6,
                                  title: "Palm Power",
                                  isDone: true,
                                  widget: twohand(),
                                ),
                                CourseContent(
                                  number: '03',
                                  duration: 12,
                                  title: "Handshake Styles",
                                  isDone: true,
                                  widget: threehand(),

                                ),
                                CourseContent(
                                  number: '04',
                                  duration: 7,
                                  title: "Disarm a Power Player",
                                  isDone: true,
                                  widget: fourhand(),
                                ),

                                CourseContent(
                                  number: '05',
                                  duration: 10,
                                  title: "Men & Women handshake",
                                  isDone: true,
                                    widget: fivehand(),
                                ),

                                CourseContent(
                                  number: '06',
                                  duration: 3,
                                  title: "Handshakes of Control",
                                  isDone: true,
                                  widget: sixhand(),
                                ),

                                CourseContent(
                                  number: '07',
                                  duration: 2,
                                  title: "Summary",
                                  isDone: true,
                                  widget: sevenhand(),
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
