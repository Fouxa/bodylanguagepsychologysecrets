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

import '../../homepagelearn/model/category.dart';

class eyeScreen extends StatelessWidget {
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
            DetailsImage(categories[1].image, height/5, height/5, Theme.of(context).scaffoldBackgroundColor,1),
            SizedBox(height: 15,),
            Text("Hidden eye signals",style:GoogleFonts.comicNeue(fontSize: height/25,color: Colors.purple,fontWeight: FontWeight.bold),) ,
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
