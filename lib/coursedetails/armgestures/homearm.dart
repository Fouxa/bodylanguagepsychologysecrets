import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/armgestures/fivearm.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/armgestures/fourarm.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/armgestures/onearm.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/armgestures/sevenarm.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/armgestures/sixarm.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/armgestures/threearm.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/armgestures/twoarm.dart';
import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../homepagelearn/model/category.dart';

class armScreen extends StatelessWidget {
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
            DetailsImage(categories[2].image, height/5, height/5, Theme.of(context).scaffoldBackgroundColor,2),

            SizedBox(height: 15,),
            Text("Invisible Arm Indications",style:GoogleFonts.comicNeue(fontSize: height/25,color: Colors.purple,fontWeight: FontWeight.bold),) ,
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
                                  title: "Beware crossed Arms",
                                  isDone: true,
                                  widget: onearm(),
                                ),
                                CourseContent(
                                  number: '02',
                                  duration: 6,
                                  title: "Crossed-Arms-on-Chest",
                                  isDone: true,
                                  widget: twoarm(),

                                ),
                                CourseContent(
                                  number: '03',
                                  duration: 3,
                                  title: "The Boss vs The Staff",
                                  isDone: true,
                                  widget: threearm(),

                                ),
                                CourseContent(
                                  number: '04',
                                  duration: 2,
                                  title: "Hugging Yourself",
                                  isDone: true,
                                  widget: fourarm(),
                                ),

                                CourseContent(
                                  number: '05',
                                  duration: 2,
                                  title: "Revealing Insecurity",
                                  isDone: true,
                                  widget: fivearm(),
                                ),

                                CourseContent(
                                  number: '06',
                                  duration: 3,
                                  title: "The Power of Touch",
                                  isDone: true,
                                  widget: sixarm(),
                                ),

                                CourseContent(
                                  number: '07',
                                  duration: 2,
                                  title: "Summary",
                                  isDone: true,
                                  widget: sevenarm(),

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



