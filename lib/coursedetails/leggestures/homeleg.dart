 import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/leggestures/eightleg.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/leggestures/fiveleg.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/leggestures/fourleg.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/leggestures/oneleg.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/leggestures/sevenleg.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/leggestures/sixleg.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/leggestures/threeleg.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/leggestures/twoleg.dart';

 import 'package:cached_network_image/cached_network_image.dart';

 import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../homepagelearn/model/category.dart';

class legScreen extends StatelessWidget {
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
            DetailsImage(categories[4].image, height/5, height/5, Theme.of(context).scaffoldBackgroundColor,4),

            SizedBox(height: 15,),
            Text("Know From Legs",style:GoogleFonts.comicNeue(fontSize: height/25,color: Colors.purple,fontWeight: FontWeight.bold),) ,
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
                                  duration: 2,
                                  title: "Animportant indicator",
                                  isDone: true,
                                  widget: oneleg(),
                                ),
                                CourseContent(
                                  number: '02',
                                  duration: 4,
                                  title: "How Feet Tell the Truth",
                                  isDone: true,
                                  widget: twoleg(),

                                ),
                                CourseContent(
                                  number: '03',
                                  duration: 5,
                                  title: "4 Standing Positions",
                                  isDone: true,
                                  widget: threeleg(),

                                ),
                                CourseContent(
                                  number: '04',
                                  duration: 2,
                                  title: "Defensive or Comfortable?",
                                  isDone: true,
                                  widget: fourleg(),
                                ),

                                CourseContent(
                                  number: '05',
                                  duration: 2,
                                  title: "Leg Cross",
                                  isDone: true,
                                  widget: fiveleg(),
                                ),

                                CourseContent(
                                  number: '06',
                                  duration: 6,
                                  title: "Mind-body game",
                                  isDone: true,
                                  widget: sixleg(),
                                ),

                                CourseContent(
                                  number: '07',
                                  duration: 3,
                                  title: " Short Skirt Syndrome",
                                  isDone: true,
                                  widget: sevenleg(),

                                ),

                                CourseContent(
                                  number: '08',
                                  duration: 2,
                                  title: "Summary",
                                  isDone: true,
                                  widget: eightleg(),

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
