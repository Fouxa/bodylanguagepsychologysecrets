import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class threesmile extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<threesmile> {
  // 1

  @override
  void initState(){
    loadFontData();
    super.initState();
  }
  loadFontData()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      fontnumber2 = prefs.getDouble("newfontnumber")!;
    });
  }

  @override
  Widget build(BuildContext context) {


     return Scaffold(

       backgroundColor:  Theme.of(context).scaffoldBackgroundColor,

      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      //  brightness: Brightness.light,
        elevation: 0,
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 70,),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [




                  SizedBox(height:25),
                  buildTextTitleVariation2("Common Types of Smiles:", fontnumber2 ),


                  SizedBox(height:15),
                  buildTextTitleVariation2('1.The Tight-Lipped Smile', fontnumber2 ),

                  OnlineImage2('https://i.ibb.co/jGhy6nB/smile31.jpg'),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("The lips are stretched tight across the face to form a straight line and the teeth are concealed. It sends the message that the smiler has a secret or a withheld opinion or attitude that they will not be sharing with you. It's a favourite of women who don't want to reveal that they don't like someone and is usually clearly read by other women as a rejection signal. Most men are oblivious to it.", fontnumber2),


                  SizedBox(height:25),
                  buildTextTitleVariation2('2.The Twisted Smile', fontnumber2 ),
                  OnlineImage2('https://i.ibb.co/f2F80Yj/smile32.jpg'),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("This smile shows opposite emotions on each side of the face. In picture A below, the right brain raises the left side eyebrow, the left muscles and left cheek to produce one type of smile on the left side of the face while the left brain pulls the same muscles downwards on the right side to produce an angry frown. The Twisted Smile is peculiar to the Western world and can only be done deliberately which means it can send only one message - sarcasm.",fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('3. The Drop-Jaw Smile', fontnumber2 ),
                  OnlineImage2('https://i.ibb.co/vv0qRgF/smile33.jpg'),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("This is a practised smile where the lower jaw is simply dropped down to give the impression that the person is laughing or playful. This is a favourite of people such as The Joker in Batman, Bill Clinton and Hugh Grant, all of whom use it to engender happy reactions in their audiences or to win more votes.",fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('4. Sideways-Looking-Up Smile', fontnumber2 ),
                  OnlineImage2('https://i.ibb.co/Gd2dSVn/smile34.jpg'),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("With the head turned down and away while looking up with a Tight-Lipped Smile, the smiler looks juvenile, playful and secretive. This coy smile has been shown to be men's favourite everywhere, because when a woman does it, it engenders parental male feelings, making men want to protect and care for females. This is one of the smiles Princess Diana used to captivate the hearts of people everywhere.",fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('5.The Grin', fontnumber2 ),
                  OnlineImage2('https://i.ibb.co/KDsTvKx/smile35.jpg'),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Smile constantly. Everyone will wonder what you've been up to.",fontnumber2 ),


                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
