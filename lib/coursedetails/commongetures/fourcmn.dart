import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class fourcmn extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<fourcmn> {
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



                  SizedBox(height:15),
                  buildTextTitleVariation2("The Legs-Spread", fontnumber2 ),
                  buildTextSubTitleVariation1("This is almost entirely a male gesture and is also seen among apes who are trying to establish authority over other apes. Rather than risk injury fighting, they spread their legs and the one with the biggest display is seen as the most dominant. And so it is with male humans; even though it's usually done unconsciously, it sends a powerful message. If one man does the Legs-Spread the others usually mirror to maintain status but it has very negative effects when a man uses it in front of women, especially in a business context, because she can't mirror it.", fontnumber2),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("A woman will feel intimidated by a man who uses the Legs-Spread in business situations.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Our videotaped meetings reveal that many women respond by crossing their legs and arms, which immediately puts them on the defensive. The advice for men here is clear — keep your legs together in business meetings. If you're a woman who is constantly confronted by a crotch-displaying male, don't react when he does it. It can work against you only if you respond  defensively. Instead, try talking to his crotch — responses such as 'You've got a good point there, Bob' and 'I can see where you're coming from' can teach a valuable lesson as well as causing riotous laughter when used at the right time.", fontnumber2),


                  SizedBox(height:15),
                  buildTextTitleVariation2("Leg-Over-the-Arm-of-Chair", fontnumber2 ),
                  buildTextSubTitleVariation1("This is mainly done by men because it also uses the LegsSpread. It not only signifies the man's ownership of the chair, it also signals that he has an informal, aggressive attitude.",fontnumber2 ),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("The Leg-Over-the-Arm-of-Chair can be annoying when it occurs during negotiation, and it is vital to make that person change position because the longer he stays in it, the longer he will have an indifferent or aggressive attitude. An easy way to do this is to ask him to lean across and look at something, or, if you have a wicked sense of humour, tell him there's a split in his trousers.", fontnumber2),



                  SizedBox(height:15),
                  buildTextTitleVariation2("The Catapult", fontnumber2 ),
                  buildTextSubTitleVariation1("This is a seated version of the Hands-on-Hips pose except the hands are behind the head with the elbows menacingly pointed out. Again, it's almost entirely a male gesture used to intimidate others or it infers a relaxed attitude to lull you into a false sense of security just before he ambushes you.",fontnumber2 ),


                  SizedBox(height:15),
                  buildTextSubTitleVariation1("This gesture is typical of professionals such as accountants lawyers, sales managers or people who are feeling superior dominant or confident about something. If we could read this person's mind, he would be saying things such as, 'I have all the answers', or 'Everything's under control', or even 'Maybe one day you'll be as smart as me.", fontnumber2),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("There are several ways you can deal with this gesture, depending on the circumstances. You can lean forward with palms up and say, 'I can see that you know about this. Would you care to comment?' then sit back and wait for an answer.", fontnumber2),



                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Women quickly develop a dislike for men who use the Catapult in business meetings.", fontnumber2),






                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
