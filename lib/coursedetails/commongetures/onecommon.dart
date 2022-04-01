import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class onecmn extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<onecmn> {
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
                  OnlineImage2('https://i.ibb.co/Zx5fStg/cmn11.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2("The Head Nod", fontnumber2 ),
                  buildTextSubTitleVariation1("In most cultures the Head Nod is used to signify 'Yes' or agreement. It's a stunted form of bowing - the person symbolically goes to bow but stops short, resulting in a nod. Bowing is a submissive gesture so the Head Nod shows we are going along with the other person's point of view. Research conducted with people who were born deaf, dumb and blind shows that they also use this gesture to signify 'Yes', so it appears to be an inborn gesture of submission.", fontnumber2),

                  SizedBox(height:25),
                  buildTextTitleVariation2("Why You Should Learn to Nod", fontnumber2 ),
                  buildTextSubTitleVariation1("Most people have never considered the power of head nodding as a persuasion tool. Research shows that people will talk three to four times more than usual when the listener nods their head using groups of three nods at regular intervals. The speed of the nod signals the patience - or lack of patience - of the listener. Slow nodding communicates that the listener is interested in what the speaker is saying so give slow, deliberate clusters of three head nods when the other person is making a point. Fast nodding tells the speaker you've heard enough or that you want them to finish or give you a turn to speak.",fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2("How to Encourage Agreement", fontnumber2 ),
                  buildTextSubTitleVariation1("There are two powerful uses of the Head Nod. Body language is an unconscious outward reflection of inner feelings so, if you feel positive or affirmative, your head will begin to nod as you speak. Conversely, if you simply start nodding your head intentionally, you will begin to experience positive feelings. In other words, positive feelings cause the head to nod - and the reverse is also true: nodding the head causes positive feelings. It's cause and effect again.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Head nodding is also very contagious. If someone nods their head at you, you will usually nod too — even if you don't necessarily agree with what they are saying. Head nodding is an excellent tool for creating rapport, getting agreement and cooperation. By finishing each sentence with a verbal affirmation such as, 'Isn't it?', 'Wouldn't you?', 'Isn't that true?' or 'Fair enough?', and with the speaker and listener both nodding their heads, the listener experiences positive feelings which create a greater likelihood of getting them to agree with you.", fontnumber2),


                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Head nodding encourages co-operation and agreement.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("After you've asked a question and the listener gives his answer nod your head during his answer. When he finishes speaking continue to nod your head another five times at the rate of about one nod per second. Usually, by the time you have counted to four, the listener will begin speaking again and give you more information. And as long as you nod and stay silent with your hand on your chin in an Evaluation position, there's no pressure on you to speak and you won't come across like an interrogator. When you listen, put your hand on your chin and give it light strokes because, as previously stated, research shows that this encourages others to keep talking.", fontnumber2),

                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
