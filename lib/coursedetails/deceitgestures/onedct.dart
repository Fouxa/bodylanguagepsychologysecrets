import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class onedct extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<onedct> {
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
                  OnlineImage2('https://i.ibb.co/CVV91tC/arm61.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2("Importance of lying", fontnumber2 ),
                  buildTextSubTitleVariation1("If you told the absolute truth to everyone you interacted with, what would be the result? If you said the exact words going through your mind as you thought them, what consequences would it bring?",fontnumber2 ),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Man to a female customer: 'Thanks for your business, Susan, and may I say what wonderful firm breasts you have.'",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Woman to a male neighbour: 'Thanks for helping me with my groceries. You've got a nice tight butt but who the hell cuts your hair?'",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("If you told everyone the complete truth all the time, you'd not only end up lonely, you might even finish up in hospital or prison. Lying is the oil that greases our interactions with others and lets us maintain friendly social relationships. These are called White Lies because their goal is to make others feel comfortable instead of telling them the cold, hard truth. Research shows that social liars are more popular than those who continually tell the truth, even though we know the social liar is lying to us. Malicious Lies, however, are where one person deliberately sets out to deceive another for personal benefit.",fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2("Lying Research", fontnumber2 ),
                  buildTextSubTitleVariation1("The least dependable signs of lying are the ones over which a person has the most control, such as words, because a person can rehearse their lies. The most reliable clues to lying are the gestures a person makes automatically, because they have little or no control over them. These responses are most likely to happen during lies because they are emotionally the most important things to the liar.",fontnumber2 ),






                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
