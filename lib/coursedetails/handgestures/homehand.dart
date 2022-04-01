import 'package:bodylanguagepsychologysecrets/coursedetails/handgestures/fivehand.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/handgestures/fourhand.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/handgestures/onehand.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/handgestures/sevenhand.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/handgestures/sixhand.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/handgestures/twohand.dart';

import 'package:bodylanguagepsychologysecrets/coursedetails/handgestures/threehand.dart';
import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:animated_text_kit/animated_text_kit.dart';


class DetailsScreen extends StatelessWidget {
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
//https://i.ibb.co/pQ6TfyM/Frame-1.png

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
                    text: 'Secret of hands',
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
                                  title: "Men and Women handshake",
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
