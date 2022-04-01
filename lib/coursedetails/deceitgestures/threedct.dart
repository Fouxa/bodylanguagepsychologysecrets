import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class threedct extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<threedct> {
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
                  buildTextTitleVariation2("Common Lying Gestures", fontnumber2 ),
                  SizedBox(height:15),
                  buildTextTitleVariation2("1.The Mouth Cover", fontnumber2 ),


                  buildTextSubTitleVariation1("The hand covers the mouth as the brain subconsciously instructs it to try to suppress the deceitful words that are being said. Sometimes this gesture might only be several fingers over the mouth or even a closed fist, but its meaning remains the same.", fontnumber2),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("If the person who is speaking uses this gesture, it indicates that they could be lying. If they cover their mouth while you are speaking, it can show they might feel you are hiding something. One of the most unsettling sights a conference speaker can see is his audience using this gesture while he's speaking. A speaker should stop and ask, 'Would someone like to ask a question?' or 'I can see some people disagree. Let's take questions.' This allows the audience's objections to be brought into the open, giving the speaker the opportunity to qualify statements and answer questions, just as he would do if they had their arms crossed.", fontnumber2),


                  SizedBox(height:15),
                  buildTextTitleVariation2("2.The Nose Touch", fontnumber2 ),
                  buildTextSubTitleVariation1("Sometimes the Nose Touch can be several quick rubs below the nose or it may be one quick, almost imperceptible nose touch. Women perform this gesture with smaller strokes than men, perhaps to avoid smudging their make-up. The important thing to remember is that this type of action should be read in clusters and in context; the person could have hay fever or a cold.", fontnumber2),


                  SizedBox(height:15),
                  buildTextTitleVariation2("3. What About an itchy Nose?", fontnumber2 ),
                  buildTextSubTitleVariation1("The itch of a person's nose is normally satisfied by a deliberate rubbing or scratching action, as opposed to the light strokes of the Nose Touch gesture. As with the Mouth Cover, the Nose Touch can be used both by the speaker to disguise his own deceit and by the listener who doubts the speaker's words. An itch is usually an isolated repetitive gesture and is incongruent or out of context with the person's overall conversation.", fontnumber2),


                  SizedBox(height:15),
                  buildTextTitleVariation2("4.The Eye Rub", fontnumber2 ),
                  buildTextSubTitleVariation1("The Eye Rub is the brain's attempt to block out the deceit, doubt or distasteful thing it sees, or to avoid having to look at the face of the person who is being lied to. Men usually rub their eyes vigorously and if the lie is a real whopper they will often look away. Women are less likely to use the Eye Rub - instead, they will use small, gentle touching motions just below the eye, because they either have been conditioned as girls to avoid making robust gestures, or to avoid smudging make-up. They also avoid a listener's gaze by looking away.", fontnumber2),


                  SizedBox(height:15),
                  buildTextTitleVariation2("5.The Ear Grab", fontnumber2 ),
                  buildTextSubTitleVariation1("Ear Grab include rubbing the back of the ear, the Finger Drill — where the fingertip is screwed back and forth inside the ear, pulling at the earlobe or bending the entire ear forward to cover the ear hole. The Ear Grab can also be a signal that the person has heard enough or may want to speak. As with the Nose Touch, the Ear Grab is used by a person who is experiencing anxiety.", fontnumber2),


                  SizedBox(height:15),
                  buildTextTitleVariation2("6.The Neck Scratch", fontnumber2 ),
                  buildTextSubTitleVariation1("The index finger — usually of the writing hand — scratches the side of the neck below the earlobe. Our observations of this gesture reveal the person scratches an average of five times. Rarely is the number of scratches less than five and hardly ever more than five. This gesture is a signal of doubt or uncertainty and is characteristic of the person who says, 'I'm not sure I agree.' It is very noticeable when the verbal language contradicts it, for example, when the person says something like, 'I can understand how you feel' but the Neck Scratch indicates they don't.", fontnumber2),



                  SizedBox(height:15),
                  buildTextTitleVariation2("7.The Collar Pull", fontnumber2 ),
                  buildTextSubTitleVariation1("Lies cause a tingling sensation in the delicate facial and neck tissues, and a rub or scratch was required to satisfy it. This not only accounts for why people who are uncertain will scratch their neck, it presents a good explanation as to why some people use the Collar Pull when they lie and suspect they have been caught out. Increased blood pressure from the deceit causes sweat to form on the neck when the deceiver feels that you suspect he's not telling the truth.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("It also occurs when a person is feeling angry or frustrated and needs to pull the collar away from his neck in an attempt to let the cool air circulate. When you see someone use this gesture, ask, 'Could you repeat that, please?' or, 'Could you clarify that point, please?' This can cause the would-be deceiver to give the game away.", fontnumber2),

                  SizedBox(height:15),
                  buildTextTitleVariation2("8. Fingers-in-the-Mouth", fontnumber2 ),
                  buildTextSubTitleVariation1("Most Hand-to-Mouth gestures can be connected to lying or deception but the Fingers-in-Mouth gesture is an outward indication of an inner need for reassurance so giving the person guarantees and assurances is a positive move.",fontnumber2 ),








                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}