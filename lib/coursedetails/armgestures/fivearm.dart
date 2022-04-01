import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class fivearm extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;

class _MyHomePageState extends State<fivearm> {
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
                  buildTextTitleVariation2("How the Rich and Famous Reveal their Insecurity", fontnumber2 ),
                  buildTextSubTitleVariation1("People who are continually exposed to others, such as royalty, politicians, television personalities and movie stars, usually don't want their audiences to detect that they are nervous or unsure of themselves. They prefer to project a cool, calm, controlled attitude when on display, but their anxiety or apprehension leaks out in disguised forms of arm-crossing. As in all arm-cross gestures, one arm swings across in front of the body towards the other arm but instead of the arms crossing, one hand touches or holds on to a handbag, bracelet, watch,' shirt cuff or object on or near their other arm. Once again the barrier is formed and the secure feeling is achieved.", fontnumber2),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("An anxious or self-conscious man will also be seen adjusting the band on his watch, checking the contents of his wallet clasping or rubbing his hands together, playing with a button on his cuff or using any gesture that lets his arms cross in front of his body. A favourite of insecure businessmen is walking into a business meeting holding a briefcase or folder in front of the body. To the trained observer, these gestures are a giveaway because they achieve no real purpose except as an attempt to disguise nervousness. A good place to observe these gestures is anywhere that people walk past a group of onlookers, such as a man who crosses the dance floor to ask a woman to dance or someone who crosses a stage to receive an award.",fontnumber2 ),


                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Women's use of disguised arm barriers is less noticeable than men's because women can grasp onto things like handbags or purses if they become self-conscious or unsure of themselves.", fontnumber2),


                  SizedBox(height:15),
                  buildTextSubTitleVariation1("One of the most common versions of creating a subtle barrier is to hold a glass or cup with two hands. You need only one hand to hold a glass but two hands allows the insecure person form an almost unnoticeable arm barrier. These types of gestures are used by almost everyone and few of us are aware that we're doing them.", fontnumber2),


                  SizedBox(height:15),
                  buildTextTitleVariation2("The Coffee Cup Barrier", fontnumber2 ),
                  buildTextSubTitleVariation1("Offering a refreshment during a negotiation is an excellent strategy for gauging how the other person is receiving your offer. Where a person places their cup immediately after they take a drink is a strong indicator of whether or not they are convinced or open to what you are saying. Someone who is reeling hesitant, unsure or negative about what they are hearing will place their cup to the opposite side of their body to form a single arm barrier. When they are accepting of what they are hearing they place the cup to the side of their body showing an open or accepting attitude.",fontnumber2 ),
                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Sitting with your elbows on the armrest of a chair is a position of power and conveys a strong, upright image. Humble defeated individuals let the arms drop inside the arms of the chair, so avoid this at all times unless your goal is to appear defeated.",fontnumber2 ),



                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
