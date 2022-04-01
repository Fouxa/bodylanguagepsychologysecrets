import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class threecmn extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<threecmn> {
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
                  OnlineImage2('https://i.ibb.co/tY0VgXL/cmn31.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2("The Head Shrug", fontnumber2 ),
                  buildTextSubTitleVariation1("Raising the shoulders and pulling the head down between them lets a person protect the vulnerable neck and throat from injury. It's the cluster used when a person hears a loud bang behind them or if they think something will fall on them. When it's used in a personal or business context it implies a submissive apology, which detracts from any encounter where you are trying to appear confident.", fontnumber2),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("When someone walks past others who are talking, admiring a view or listening to a speaker, they pull their head down, turn their shoulders in and try to appear smaller and less significant. This is known as the Head Duck. It is also used by subordinates approaching superiors, and reveals the status and Power play between individuals.", fontnumber2),


                  SizedBox(height:25),
                  buildTextTitleVariation2("Picking Imaginary Lint", fontnumber2 ),
                  buildTextSubTitleVariation1("When a person disapproves of the opinions or attitudes of others but doesn't want to say anything, displacement gestures are likely to occur, that is, apparently innocent body language gestures that reveal a withheld opinion. Picking imaginary pieces of lint from one's own clothing is one such gesture. The Lint-Picker usually looks down and away from others while performing this seemingly minor, irrelevant action. This is a common signal of disapproval and is a good sign that he doesn't like what's being said, even when he sounds as if he's agreeing with everything.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Open your palms and say, 'What do you think?' or, 'I can see you have some thoughts on this. Would you mind telling me what they are?' Sit back, arms apart, palms visible, and wait for the answer. If the person says he is in agreement with you but continues to pick the imaginary lint, you may need to take an even more direct approach to discover his hidden objections.",fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2("How We Show We're Ready for Action", fontnumber2 ),
                  buildTextSubTitleVariation1("Modern humans, however, have invented a gesture to help them achieve a bigger physical presence - the Hands-on-Hips gesture. Hands-on-Hips is used by the child arguing with its parent, the athlete waiting for his event to begin, the boxer waiting for the bout to start and males who want to issue a non-verbal challenge to other males who enter their territory. In each instance the person takes the Hands-on-Hips pose and this is a universal gesture used to communicate that a person is ready for assertive action. It lets the person take up more space and has the threat value of the pointed elbows that act as weapons, preventing others from approaching or passing.", fontnumber2),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Also known as the 'readiness' gesture, that is, the person is ready for assertive action, its basic meaning carries a subtly aggressive attitude everywhere. It has also been called the achiever stance, related to the goal-directed person who is ready to tackle their objectives or is ready to take action on something. Men often use this gesture around women to display an assertive male attitude.",fontnumber2 ),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Hands-on-Hips makes you look bigger and more noticeable because you take up more space.", fontnumber2),



                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
