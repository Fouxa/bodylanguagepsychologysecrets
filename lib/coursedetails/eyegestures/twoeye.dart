import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class twoeye extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<twoeye> {
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
                  OnlineImage2('https://i.ibb.co/B35Y8Jv/eye21.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2('The Eyebrow Flash', fontnumber2 ),
                  buildTextSubTitleVariation1("This gesture is a long-distance 'hello' greeting signal which has been used everywhere since ancient times. The Eyebrow Flash is universal and is also used by monkeys and apes as a social greeting signal, confirming that it's an inborn gesture. The eyebrows rise rapidly for a split second and then drop again and its purpose is to draw attention to the face so that clear signals can be exchanged. The only culture that doesn't use it is the Japanese, where it's considered improper or impolite and has definite sexual connotations.", fontnumber2),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("This is an unconscious signal that acknowledges the other Person's presence and is probably linked to the fear reaction of being surprised, or saying, 'I'm surprised and afraid of you', which translates to 'I acknowledge you and am not threatening'. We don't Eyebrow Flash strangers we pass in the street or People we don't like, and people who don't give the Eyebrow Flash on initial greeting are perceived as potentially aggressive. Try this simple test and you'll discover first hand the power of the Eyebrow Flash — sit in the lobby of a hotel and Eyebrow Flash everyone who goes past. You'll see that not only do others return the Flash and smile, many will come over and begin to talk to you. The golden rule is always Eyebrow Flash people you like or those who you want to like you.",fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Eye Widening', fontnumber2 ),
                  buildTextSubTitleVariation1("Lowering the eyebrows is how humans show dominance or aggression towards others, whereas raising the eyebrows shows submission. Keating & Keating found that several species of apes and monkeys use exactly the same gestures for the same purpose. They also found that people who intentionally raise their eyebrows are perceived as submissive by both humans and apes, and that those who lower them are perceived as aggressive. Researchers showed how women widen their eyes by raising their eyebrows and eyelids to create the 'baby face' appearance of a small infant. This has a powerful effect on men by releasing hormones into the brain, which stimulate the desire to protect and defend females. Women pluck and redraw their eyebrows higher up the forehead to appear more submissive because, on a subconscious level at least, they know it appeals to men. If men trim their eyebrows they do it from the top of the eyebrow down to make their eyes appear narrower and more authoritative ",fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('The Looking Up Cluster', fontnumber2 ),
                  buildTextSubTitleVariation1("Lowering the head and looking up is another submissive gesture that appeals to men because it makes the eyes appear larger and makes a woman appear more childlike. This is because children are so much smaller than adults and spend their looking time gazing up and this creates a parenting reaction in both men and women.",fontnumber2 ),




                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
