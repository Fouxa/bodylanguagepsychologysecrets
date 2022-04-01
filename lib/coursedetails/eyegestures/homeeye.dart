import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/eyegestures/eighteye.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/eyegestures/fiveeye.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/eyegestures/foureye.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/eyegestures/nineeye.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/eyegestures/oneeye.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/eyegestures/seveneye.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/eyegestures/sixeye.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/eyegestures/teneye.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/eyegestures/threeeye.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/eyegestures/twoeye.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';

class eyeScreen extends StatelessWidget {
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
                    text: 'Eye signals',
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
                                  duration: 7,
                                  title: "The Dilating Pupils",
                                  isDone: true,
                                  widget: oneeye(),
                                ),
                                CourseContent(
                                  number: '02',
                                  duration: 6,
                                  title: "The Eyebrow Flash",
                                  isDone: true,
                                  widget: twoeye(),
                                ),
                                CourseContent(
                                  number: '03',
                                  duration: 5,
                                  title: "How Men's Fires Get Lit",
                                  isDone: true,
                                  widget: threeye(),

                                ),
                                CourseContent(
                                  number: '04',
                                  duration: 2,
                                  title: "Grab a Man's Attention",
                                  isDone: true,
                                  widget: foureye(),
                                ),

                                CourseContent(
                                  number: '05',
                                  duration: 4,
                                  title: "Liars Look You in the Eye",
                                  isDone: true,
                                  widget: fiveeye(),
                                ),

                                CourseContent(
                                  number: '06',
                                  duration: 4,
                                  title: "Extended Blinking",
                                  isDone: true,
                                  widget: sixeye(),
                                ),

                                CourseContent(
                                  number: '07',
                                  duration: 6,
                                  title: "Geography of the Face",
                                  isDone: true,
                                  widget: seveneye(),

                                ),

                                CourseContent(
                                  number: '08',
                                  duration: 5,
                                  title: "First 20 Seconds",
                                  isDone: true,
                                  widget: eighteye(),

                                ),

                                CourseContent(
                                  number: '09',
                                  duration: 8,
                                  title: "Things to look",
                                  isDone: true,
                                  widget: nineeye(),

                                ),


                                CourseContent(
                                  number: '10',
                                  duration: 2,
                                  title: "Summary",
                                  isDone: true,
                                  widget: teneye(),

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
