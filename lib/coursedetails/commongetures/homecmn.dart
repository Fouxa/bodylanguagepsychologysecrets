
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

class cmnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(

      backgroundColor: Theme.of(context).scaffoldBackgroundColor,


      body:


      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
           image: DecorationImage(
            image: CachedNetworkImageProvider('https://i.ibb.co/2d5xxKt/Frame-3.png'),
            fit: BoxFit.contain,
            alignment: Alignment.bottomCenter,
          ),
        ),


        child:


        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, top: height/20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                         ),
                      ),



                    ],
                  ),


                  TextLiquidFill(
                    text: 'Common gestures',
                    waveDuration: Duration(milliseconds: 1000),
                    loadDuration: Duration(milliseconds: 1000),
                    waveColor: Colors.purple,
                    boxBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    textStyle:GoogleFonts.pacifico(fontSize: height/17,color: Colors.purple),
                    boxHeight: 100.0,
                  ),



                ],
              ),
            ),

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
                                  title: "Gestures showing readiness",
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

