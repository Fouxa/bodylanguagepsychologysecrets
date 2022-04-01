import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class nineeye extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<nineeye> {
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
                  buildTextTitleVariation2("What Channel Are You Tuned to?", fontnumber2 ),
                  buildTextSubTitleVariation1("A person's eye movements can reveal what their mind is focusing on by telling you whether they are remembering something they have seen, heard, smelled, tasted or touched. This technique is a development of American psychologists Grinder and Bandler and is known as Neurolinguistic Programming, or NLP. In simple terms, if a person is remembering something that they saw, their eyes will move upward. If they are recalling something they heard, they look to the side and tilt their head as if listening. If they are recalling a feeling or emotion, they'll look down and to the right. When a person is mentally talking to themselves, they look down and to the left.",fontnumber2 ),
                  SizedBox(height:15),

                  buildTextSubTitleVariation1("The difficulty is that these eye movements can occur in a fraction of a second and come in clusters making it harder to read 'live'. A videotape replay, however, can let you see discrepancy between what a person says and what they really think. Thirty-five per cent of people prefer the visual information channel and will use phrases such as 'I see what you mean' 'Can you look into that?', 'That's perfectly clear' or 'Can you show me that?' and you will get their attention by showing them photos, charts and graphs and asking if they 'Get the picture' ", fontnumber2),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Twenty-five per cent prefer the auditory channel and use words such as 'That rings a bell', 'I hear you', 'That doesn't sound right' and that they want to be 'in tune' with you. The other 40% prefer the feelings channel and will say 'Let's kick that idea around', 'Our department needs a shot in the arm', 'I can't quite grasp what you're saying'. They love to test drive things and be involved in a demonstration so that they can 'grasp the idea'. NLP is a remarkable discovery and a powerful communications tool that should be addressed as separate subject. We suggest you follow up by reading the work by Grinder and Bandler mentioned in the reference section at the back of this book.", fontnumber2),

                  SizedBox(height:25),
                  buildTextTitleVariation2("How to Hold Eye Contact with an Audience", fontnumber2 ),
                  buildTextSubTitleVariation1("In groups of up to 50 people it's possible to meet the gaze of each individual. In larger groups you usually stand further back, so a different approach is needed. By pegging a real or imaginary point or person at each corner of the group and one in the centre, when you stand at a distance of 10 yards (10m) from the front row, approximately 20 people in a group of up to 50 will feel you are looking at them individually as you speak and so you can create an intimate bond with most of your audience.",fontnumber2 ),

                  SizedBox(height:25),
                  buildTextTitleVariation2("The Power Lift", fontnumber2 ),
                  buildTextSubTitleVariation1("To keep control of where a person is looking, use a pen to Point to the presentation and, at the same time, verbalise what he sees. Next, lift the pen from the presentation and hold it between his eyes and your eyes. This has the magnetic effect of lifting his head so that now he is looking at you and he sees and hears what you are saying, achieving maximum absorption of your message. Keep the palm of your other hand open when you are speaking. We also found that women hold more direct eye contact than men during presentations, especially when they are not talking. When women are talking, however, they avert their eyes more than men do. Men stare more at women than vice versa and men give less direct eye contact when listening to other men than when listening to women.", fontnumber2),




                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}