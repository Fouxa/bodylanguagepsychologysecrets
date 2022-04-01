import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class fourdct extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<fourdct> {
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
                  OnlineImage2('https://i.ibb.co/VgF2tL9/dct11.jpg'),



                  SizedBox(height:15),
                  buildTextTitleVariation2("Evaluation Gestures", fontnumber2 ),
                  buildTextTitleVariation2("1.Boredom", fontnumber2 ),


                  buildTextSubTitleVariation1("When the listener begins to use his hand to support his head, it is a signal that boredom has set in and his supporting hand is an attempt to hold his head up to stop himself from falling asleep. The degree of the listener's boredom is related to the extent to which his arm and hand are supporting his head. It usually begins with the chin being supported by the thumb and then by the fist as interest wanes. Extreme lack of interest is shown when the head is fully supported by the hand, and the ultimate boredom signal occurs when the head is fully supported by the hands and snoring sounds are evident.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Drumming the fingers on the table and continual tapping of the feet on the floor are often misinterpreted by professional speakers as boredom signals, but in fact signal impatience. If you are addressing a group of people and see these signals, a strategic move must be made to get the finger drummer or foot tapper involved in the conversation to avoid his negative effect on the other listeners. Any audience that displays boredom and impatience signals together is telling the speaker that it is time for him to end.", fontnumber2),


                  SizedBox(height:25),
                  buildTextTitleVariation2("2.Interest", fontnumber2 ),
                  buildTextSubTitleVariation1("Genuine interest is shown when the hand lightly rests on the cheek and is not used as a head support. When the index finger points vertically up the cheek and the thumb supports the chin, the listener is having negative or critical thoughts about the speaker or his subject. Sometimes the index finger may rub or pull at the eye as the negative thoughts continue.",fontnumber2 ),







                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
