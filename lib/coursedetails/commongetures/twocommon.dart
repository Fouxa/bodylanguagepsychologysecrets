import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class twocmn extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<twocmn> {
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
                  buildTextTitleVariation2("Basic Head Positions", fontnumber2 ),
                  buildTextTitleVariation2("1. Head Up", fontnumber2 ),
                  SizedBox(height:15),
                  OnlineImage2('https://i.ibb.co/W66hN0y/cmn21.jpg'),


                  SizedBox(height:15),
                  buildTextSubTitleVariation1("There are three basic head positions. The first is with Head Up and is the position taken by the person who has a neutral attitude about what is being said. The head remains still and the conversation may be punctuated by occasional small nods. Hand-to cheek evaluation gestures are often used with this position.", fontnumber2),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("When the head is lifted high with the chin jutting forward it signals superiority, fearlessness or arrogance. The person intentionally exposes their throat and they gain additional height which allows them to 'look down their nose' at you. Large chins are the result of high testosterone levels which is why chin-jutting is associated with power and aggression.", fontnumber2),


                  SizedBox(height:25),
                  buildTextTitleVariation2("2.The Head Tilt", fontnumber2 ),
                  SizedBox(height:15),
                  OnlineImage2('https://i.ibb.co/Xzq1j3n/cmn22.jpg'),


                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Tilting the head to the side is a submission signal because it exposes the throat and neck and makes the person look smaller and less threatening. Its probable origin is in the baby resting its head on its parent's shoulder or chest, and the submissive, non-threatening meaning it conveys seems to be unconsciously understood by most people, especially women.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Charles Darwin was one of the first to note that humans, as well as animals - especially dogs - tilt their heads to one side when they become interested in something. Women will use this gesture to show interest in men they fancy because a woman who is nonthreatening and shows submission is attractive to most men.",fontnumber2 ),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("If you are giving a presentation or delivering a speech, make a point of looking for this gesture among your audience. When you see an audience tilting their heads and leaning forward using hand-to-chin evaluation gestures, you're getting the point across. When you listen to others, use the Head-Tilt and Head Nods and the listener will begin to feel trusting towards you because you appear non-threatening. In a business negotiations with men, however, a woman should keep her head up at all times. ",fontnumber2 ),



                  SizedBox(height:25),
                  buildTextTitleVariation2("3. Head Down", fontnumber2 ),
                  SizedBox(height:15),
                  OnlineImage2('https://i.ibb.co/5kWPcJL/cmn23.jpg'),


                  SizedBox(height:15),
                  buildTextSubTitleVariation1("When the chin is down, it signals that a negative, judgemental or aggressive attitude exists. Critical evaluation clusters are normally made with the head down and until the person's head lifts or tilts, you can have a problem, professional presenters and trainers are often confronted by audiences who are seated with their heads down and arms folded on their chests.", fontnumber2),
                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Experienced conference speakers and presenters will take action to involve their audience and get participation before they begin their presentation. This is intended to get the audience's heads up and to get involvement. If the speaker's tactic is successful, the audience's next head position will be the Head Tilt.",fontnumber2 ),





                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
