import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class twohand extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<twohand > {
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

                  OnlineImage2('https://i.ibb.co/tMYFjtG/hand21.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2('Palm Power', fontnumber2  ),
                  buildTextSubTitleVariation1("One of the least noticed, but most powerful, body signals is given by the human palm when giving someone directions or commands and in handshaking. When used in a certain way, Palm Power invests its user with the power of silent authority. There are three main palm command gestures: the Palm-Up position, the Palm-Down position and the Palm-Closed- i Finger-Pointed position. The differences of the three positions are shown in this example: let's say that you ask someone to pick up something and carry it to another location. We'll assume that you use the same tone of voice, the same words and facial expressions in each example, and that you change only the position of your palm. The palm facing up is used as a submissive, non-threatening gesture, reminiscent of the pleading gesture of a street beggar and, from an evolutionary perspective, shows the person holds no weapons. The person being asked to move the item will not feel they are being pressured into it and are unlikely to feel threatened by your request. If you want someone to talk you can use the Palm-Up as a 'handover' gesture to let them know you expect them to talk and that you're ready to listen. The Palm-Up gesture became modified over the centuries and gestures like the Single-Palm-Raised-in-the-Air, the PalmOver-tbe-Heart and many other variations developed.", fontnumber2 ),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Turning your palm from facingupwards to facing downwards completelyalters how others perceive you.",fontnumber2  ),


                  SizedBox(height:15),
                  buildTextSubTitleVariation1("When the palm is turned to face downwards, you will project immediate authority. The other person will sense that you've given them an order to move the item and may begin to feel antagonistic towards you, depending on your relationship with him or the position you have with him in a work environment.",fontnumber2  ),


                  SizedBox(height:15),
                  buildTextSubTitleVariation1("For example, if the other person was someone of equal status, he might resist a Palm-Down request and would be more likely to comply if you'd used the Palm-Up position. If the person is your subordinate, the Palm-Down gesture is seen as acceptable because you have the authority to use it.", fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Pointing finger', fontnumber2  ),
                  buildTextSubTitleVariation1("The Palm-Closed-Finger-Pointed is a fist where the pointed finger is used like a symbolic club with which the speaker figuratively beats his listeners into submission. Subconsciously, it evokes negative feelings in others because it precedes a right over-arm blow, a primal move most primates use in a physical attack.", fontnumber2 ),
                  SizedBox(height:15),
                  buildTextSubTitleVariation1("The Palm-Closed-Finger-Pointed gesture is one of the most annoying gestures anyone can use while speaking, particularly when it beats time to the speaker's words. In some countries such as Malaysia and the Philippines, finger pointing at a person is an insult as this gesture is only used to point at animals. Malaysians will use their thumb to point to people or to give directions.",fontnumber2  ),


                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}