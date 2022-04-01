import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class twoarm extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;

class _MyHomePageState extends State<twoarm> {
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

OnlineImage2('https://i.ibb.co/Z1PJKQC/arm21.jpg'),


                  SizedBox(height:25),
                  buildTextTitleVariation2("Crossed-Arms-on-Chest", fontnumber2 ),
                  buildTextSubTitleVariation1("Both arms are folded together across the chest as an attempt to put a barrier between the person and someone or something they don't like. There are many arm-folding positions and we'll discuss here the most common ones you're likely to see. Crossed-Arms-on-Chest is universal and is decoded with the same defensive or negative meaning almost everywhere. It is commonly seen among strangers in public meetings, in queues or cafeteria lines, elevators or anywhere that people feel uncertain or insecure.",fontnumber2 ),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Most people will take an arms-folded position when they disagree with what they're hearing. Many speakers fail to communicate their message to their audience because they haven't seen the crossed-arms position of their listeners. Experienced speakers know that this gesture means a good 'ice breaker' is needed to move their audience into a more receptive position that will change their attitude from negative to positive.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("When you see someone take the arms-crossed position, it's reasonable to assume that you may have said something with which they disagree. It may be pointless continuing your line of argument even though the person could be verbally agreeing with you. The fact is that body language is more honest than words. Your objective should be to try to work out why they crossed their arms and to try to move the person into a more receptive position. The attitude causes the gesture to occur and maintaining the gesture forces the attitude to remain.", fontnumber2),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Solution', fontnumber2 ),
                  buildTextSubTitleVariation1("A simple but effective way of breaking the arms-folded position is to give the listener something to hold or give them something to do. Giving them a pen, book, brochure, sample written test forces them to unfold their arms and lean forward. This moves them into a more open position and, therefore, a more open attitude. Asking someone to lean forward to look at a visual presentation can also be an effective means of opening the arms-folded position. You could also lean forward with your palms up and say, 'I can see you have a question...what would you like to know?' or, 'What's your opinion?' You then sit or lean back to indicate that it's their turn to speak. By using your palms you non-verbally tell them that you would like them to be open and honest because that's what you're being.",fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Reinforced Arm-Crossing', fontnumber2 ),
                  buildTextSubTitleVariation1("If a person has clenched fists as well as a full arm-cross, this cluster, called Fists-Clenched-Arm-Crossed, shows hostility as well as defensiveness. If it's combined with a tight-lipped smile or clenched teeth and red face, a verbal or even physical attack could happen. A conciliatory approach is needed to discover what is causing it if the reason is not already apparent. This person has an aggressive, attacking attitude.", fontnumber2),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Arm-Gripping', fontnumber2 ),
                  buildTextSubTitleVariation1("The Double-Arm-Grip is characterised by the person's hands tightly gripping their upper arms to reinforce themselves and avoid exposure of the front of the body. Sometimes the arms can be gripped so tight that the fingers and knuckles can turn white as blood circulation is cut off. It's a person's way of comforting himself with a form of self-hugging. Arm-gripping is commonly seen in doctors' and dentists' waiting rooms or with first-time air travellers who are waiting for lift-off. It shows a negative, restrained attitude.",fontnumber2 ),



                  SizedBox(height:15),

                  buildTextSubTitleVariation1("In a courtroom, the claimant may be seen using a FistsClenched-Arm-Crossed pose while the defendant may have taken the Double-Arm-Grip position.", fontnumber2),







                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}

