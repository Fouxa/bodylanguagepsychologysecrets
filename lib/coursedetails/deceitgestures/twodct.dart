import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class twodct extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<twodct> {
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
                  OnlineImage2('https://i.ibb.co/KDsTvKx/smile35.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2("Face Reveals the Truth", fontnumber2 ),
                  buildTextSubTitleVariation1("The face is used more than any other part of the body to cover up lies. We use smiles, nods and winks in an attempt to cover up, but unfortunately for us, our body signals will tell the truth and there is a lack of congruence between our body gestures and facial signals. Our attitudes and emotions are continually revealed on our faces and we are completely unaware of it most of the time.", fontnumber2),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("When we're going to try to conceal a lie, or a certain thought flashes into our mind, it can be shown for a split second on our face. We usually interpret someone's quick nose touch as an itch, or that when they rest their hand on their face they are deeply interested in us, without ever suspecting that we're boring them to death.", fontnumber2),


                  SizedBox(height:25),
                  buildTextTitleVariation2("Women Lie the Best and That's the Truth", fontnumber2 ),
                  buildTextSubTitleVariation1("Women are better at reading emotions, and therefore better at manipulating others with an appropriate lie. Women tell more complicated lies than men, whereas men tell simple lies such as 'I missed the bus' or 'My mobile phone battery was flat — that's why I couldn't call you.' Also it is a fact that attractive people are more believed than unattractive ones,",fontnumber2 ),


                  SizedBox(height:15),
                  buildTextTitleVariation2("Why It's Hard to Lie", fontnumber2 ),
                  buildTextSubTitleVariation1("The difficulty with lying is that the subconscious mind acts automatically and independently of our verbal lie, so our body language gives us away. This is why people who rarely tell lies are easily caught, regardless of how convincing they may sound. The moment they begin to lie, their body sends out contradictory signals, and these give us a feeling that they're not telling the truth.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("These include facial muscular twitching, dilation and contraction of pupils, sweating, flushed cheeks, eye-blinking rate increasing from 10 blinks per minute to as many as 50 blinks per minute and many other micro-signals that indicate deceit. Research using slow-motion cameras shows that these micro-gestures can occur within a split second and it's only people such as professional interviewers, salespeople and the very perceptive who can read them.",fontnumber2 ),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("It's obvious then, that to be able to lie successfully, you need to have your body hidden or out of sight. Interrogation involves placing the person on a chair in the open or placing him under lights with his body in full view of the interrogators; his lies are much easier to see under those circumstances. Lying is easier if you're sitting behind a desk where your body is partially hidden, peering over a fence or from behind a closed door. The best way to lie is over the telephone or in an email.",fontnumber2 ),






                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
