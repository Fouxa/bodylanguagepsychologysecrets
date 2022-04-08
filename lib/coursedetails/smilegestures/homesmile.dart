
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/smilegestures/fivesmile.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/smilegestures/foursmile.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/smilegestures/onesmile.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/smilegestures/sevensmile.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/smilegestures/sixsmile.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/smilegestures/threesmile.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/smilegestures/twosmile.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';

import '../../homepagelearn/model/category.dart';

class smileScreen extends StatelessWidget {
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
            DetailsImage(categories[3].image, height/5, height/5, Theme.of(context).scaffoldBackgroundColor,3),

            SizedBox(height: 15,),
            Text("Sneaky Smile Cues",style:GoogleFonts.comicNeue(fontSize: height/25,color: Colors.purple,fontWeight: FontWeight.bold),) ,
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
                                  duration: 3,
                                  title: "Smiling Is Submission",
                                  isDone: true,
                                  widget: onesmile(),
                                ),
                                CourseContent(
                                  number: '02',
                                  duration: 3,
                                  title: "Practising the Fake Smile",
                                  isDone: true,
                                  widget: twosmile(),
                                ),
                                CourseContent(
                                  number: '03',
                                  duration: 5,
                                  title: "Common Types of Smiles",
                                  isDone: true,
                                  widget: threesmile(),

                                ),
                                CourseContent(
                                  number: '04',
                                  duration: 4,
                                  title: "How Jokes Work",
                                  isDone: true,
                                  widget: foursmile(),
                                ),

                                CourseContent(
                                  number: '05',
                                  duration: 5,
                                  title: "Permanent Down-Mouth",
                                  isDone: true,
                                  widget: fivesmile(),
                                ),

                                CourseContent(
                                  number: '06',
                                  duration: 4,
                                  title: "Laughter In Love",
                                  isDone: true,
                                  widget: sixsmile(),
                                ),

                                CourseContent(
                                  number: '07',
                                  duration: 2,
                                  title: "Summary",
                                  isDone: true,
                                  widget: sevensmile(),

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
