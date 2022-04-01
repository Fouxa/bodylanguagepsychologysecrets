import 'package:bodylanguagepsychologysecrets/screenarm/screens/quiz/quiz_screen.dart';
import 'package:bodylanguagepsychologysecrets/screencmn/screens/quiz/quiz_screen.dart';
import 'package:bodylanguagepsychologysecrets/screendct/screens/quiz/quiz_screen.dart';
import 'package:bodylanguagepsychologysecrets/screeneye/screens/quiz/quiz_screen.dart';
import 'package:bodylanguagepsychologysecrets/screenhand/screens/quiz/quiz_screen.dart';
import 'package:bodylanguagepsychologysecrets/screenleg/screens/quiz/quiz_screen.dart';
import 'package:bodylanguagepsychologysecrets/screensmile/screens/quiz/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bodylanguagepsychologysecrets/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

class testScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;



    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).backgroundColor,



      body:
      ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: <Widget>[

            Container(
              margin: EdgeInsets.only(  top: 5,  ),

              decoration: BoxDecoration(

                color:Colors.transparent,

                /*  image: DecorationImage(
            image: AssetImage("assets/images/marketing.png"),
            fit: BoxFit.cover,
          ),
     */
              ),



              child:
              Stack(
                children: [

                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // 1/6



                          SizedBox(height:5),


                          Card(

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17), // if you need this
                              side: BorderSide(
                                color: Colors.purple.withOpacity(0.5),
                                width: 2,
                              ),
                            ),
                            child: Container(

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider('https://i.ibb.co/0GXJLJ0/handquiz.jpg'),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(17),
                              ),

                              width: width/1.1,
                              height: height/5.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height:20),

                                  Text(
                                    "Secret of hands",
                                    style: GoogleFonts.comicNeue(fontSize: height/30,color: Colors.purple,fontWeight: FontWeight.bold),                          ),

                                  SizedBox(height:10),

                                  InkWell(
                                    onTap: () => Get.to(QuizScreenhand()),
                                    child: Container(
                                      width: 180,
                                      alignment: Alignment.center,


                                      padding: EdgeInsets.all(kDefaultPadding * 0.45), // 15
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white.withOpacity(0.9), width: 3),
                                        color:  Colors.purple,
                                        //  gradient: kPrimaryGradient,
                                        borderRadius: BorderRadius.all(Radius.circular(17)),
                                      ),
                                      child: Text(
                                        "Start Quiz",
                                        style: GoogleFonts.comicNeue(fontSize: height/30,color: Colors.white,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                          SizedBox(height:20),

                          Card(
                             shadowColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17), // if you need this
                              side: BorderSide(
                                color: Colors.purple.withOpacity(0.5),
                                width: 2,
                              ),
                            ),
                            child: Container(

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider('https://i.ibb.co/JzSjps9/eyequiz-compressed.jpg'),
                                  fit: BoxFit.cover,                        ),
                                borderRadius: BorderRadius.circular(17),
                              ),

                              width: width/1.1,
                              height: height/5.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height:20),

                                  Text(
                                    "Eye signals",
                                    style: GoogleFonts.comicNeue(fontSize: height/30,color:  Colors.purple,fontWeight: FontWeight.bold),                          ),

                                  SizedBox(height:10),

                                  InkWell(
                                    onTap: () => Get.to(QuizScreeneye()),
                                    child: Container(
                                      width: 180,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(kDefaultPadding * 0.45), // 15
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white.withOpacity(0.9), width: 3),
                                        color:  Colors.purple,
                                        //  gradient: kPrimaryGradient,
                                        borderRadius: BorderRadius.all(Radius.circular(17)),
                                      ),
                                      child: Text(
                                        "Start Quiz",
                                        style: GoogleFonts.comicNeue(fontSize: height/30,color: Colors.white,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),



                          SizedBox(height:20),
                          Card(
                             shadowColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17), // if you need this
                              side: BorderSide(
                                color: Colors.purple.withOpacity(0.5),
                                width: 2,
                              ),
                            ),
                            child: Container(

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider('https://i.ibb.co/B3F8b49/smilequiz-compressed.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(17),
                              ),

                              width: width/1.1,
                              height: height/5.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height:20),

                                  Text(
                                    "Smile and laughter",
                                    style: GoogleFonts.comicNeue(fontSize: height/30,color: Colors.purple,fontWeight: FontWeight.bold),                          ),

                                  SizedBox(height:10),

                                  InkWell(
                                    onTap: () => Get.to(QuizScreensmile()),
                                    child: Container(
                                      width: 180,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(kDefaultPadding * 0.45), // 15
                                      decoration: BoxDecoration(
                                        color:  Colors.purple,
                                        border: Border.all(color: Colors.white.withOpacity(0.9), width: 3),
                                        //  gradient: kPrimaryGradient,
                                        borderRadius: BorderRadius.all(Radius.circular(17)),
                                      ),
                                      child: Text(
                                        "Start Quiz",
                                        style: GoogleFonts.comicNeue(fontSize: height/30,color: Colors.white,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),



                          SizedBox(height:20),

//////////////////////////////////////////////////////////////////////////////////////////////////////

                          Card(
                             shadowColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17), // if you need this
                              side: BorderSide(
                                color: Colors.purple.withOpacity(0.5),
                                width: 2,
                              ),
                            ),
                            child: Container(

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider('https://i.ibb.co/Dkrj1XB/armquiz-compressed.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(17),
                              ),

                              width: width/1.1,
                              height: height/5.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height:20),

                                  Text(
                                    "Arm indication",
                                    style: GoogleFonts.comicNeue(fontSize: height/30,color: Colors.purple,fontWeight: FontWeight.bold),                          ),

                                  SizedBox(height:10),

                                  InkWell(
                                    onTap: () => Get.to(QuizScreenarm()),
                                    child: Container(
                                      width: 180,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(kDefaultPadding * 0.45), // 15
                                      decoration: BoxDecoration(
                                        color:  Colors.purple,
                                        border: Border.all(color: Colors.white.withOpacity(0.9), width: 3),
                                        //  gradient: kPrimaryGradient,
                                        borderRadius: BorderRadius.all(Radius.circular(17)),
                                      ),
                                      child: Text(
                                        "Start Quiz",
                                        style: GoogleFonts.comicNeue(fontSize: height/30,color: Colors.white,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),




                          SizedBox(height:20),

                          Card(
                             shadowColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17), // if you need this
                              side: BorderSide(
                                color: Colors.purple.withOpacity(0.5),
                                width: 2,
                              ),
                            ),
                            child: Container(

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider('https://i.ibb.co/b5WbFYb/legquiz-compressed.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(17),
                              ),

                              width: width/1.1,
                              height: height/5.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height:20),

                                  Text(
                                    "Legs reveal your mind",
                                    style: GoogleFonts.comicNeue(fontSize: height/30,color: Colors.purple,fontWeight: FontWeight.bold),                          ),

                                  SizedBox(height:10),

                                  InkWell(
                                    onTap: () => Get.to(QuizScreenleg()),
                                    child: Container(
                                      width: 180,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(kDefaultPadding * 0.45), // 15
                                      decoration: BoxDecoration(
                                        color:  Colors.purple,
                                        border: Border.all(color: Colors.white.withOpacity(0.9), width: 3),
                                        //  gradient: kPrimaryGradient,
                                        borderRadius: BorderRadius.all(Radius.circular(17)),
                                      ),
                                      child: Text(
                                        "Start Quiz",
                                        style: GoogleFonts.comicNeue(fontSize: height/30,color: Colors.white,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),






                          SizedBox(height:20),






                          Card(
                             shadowColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17), // if you need this
                              side: BorderSide(
                                color:Colors.purple.withOpacity(0.5),
                                width: 2,
                              ),
                            ),
                            child: Container(

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider('https://i.ibb.co/fGPZppr/commonquiz-compressed.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(17),
                              ),

                              width: width/1.1,
                              height: height/5.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height:20),

                                  Text(
                                    "Most common gestures",
                                    style: GoogleFonts.comicNeue(fontSize: height/30,color: Colors.purple,fontWeight: FontWeight.bold),                          ),

                                  SizedBox(height:10),

                                  InkWell(
                                    onTap: () => Get.to(QuizScreencmn()),
                                    child: Container(
                                      width: 180,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(kDefaultPadding * 0.45), // 15
                                      decoration: BoxDecoration(
                                        color:  Colors.purple,
                                        //  gradient: kPrimaryGradient,
                                        border: Border.all(color: Colors.white.withOpacity(0.9), width: 3),
                                        borderRadius: BorderRadius.all(Radius.circular(17)),
                                      ),
                                      child: Text(
                                        "Start Quiz",
                                        style: GoogleFonts.comicNeue(fontSize: height/30,color: Colors.white,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),

                          SizedBox(height:20),


                          Card(
                             shadowColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17), // if you need this
                              side: BorderSide(
                                color:Colors.purple.withOpacity(0.5),
                                width: 2,
                              ),
                            ),
                            child: Container(

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider('https://i.ibb.co/3rT1dF1/dctquiz-compressed.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(17),
                              ),

                              width: width/1.1,
                              height: height/5.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height:20),

                                  Text(
                                    "Deceit signals",
                                    style: GoogleFonts.comicNeue(fontSize: height/30,color:  Colors.purple,fontWeight: FontWeight.bold),                          ),

                                  SizedBox(height:10),

                                  InkWell(
                                    onTap: () => Get.to(QuizScreendct()),
                                    child: Container(
                                      width: 180,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(kDefaultPadding * 0.45), // 15
                                      decoration: BoxDecoration(
                                        color:  Colors.purple,
                                        //  gradient: kPrimaryGradient,
                                        border: Border.all(color: Colors.white.withOpacity(0.9), width: 3),
                                        borderRadius: BorderRadius.all(Radius.circular(17)),
                                      ),
                                      child: Text(
                                        "Start Quiz",
                                        style: GoogleFonts.comicNeue(fontSize: height/30,color: Colors.white,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),

                          SizedBox(height:20),
                          ///////////////////////////////////////////////////////////////////////////////////
                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ),


          ]
      ),

    );
  }
}
