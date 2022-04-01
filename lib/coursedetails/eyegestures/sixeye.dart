import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class sixeye extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<sixeye> {
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
                  OnlineImage2('https://i.ibb.co/B35Y8Jv/eye21.jpg'),


                  SizedBox(height:25),
                  buildTextTitleVariation2("Extended Blinking", fontnumber2 ),
                  buildTextSubTitleVariation1("A normal, relaxed blinking rate is six to eight blinks per minute and the eyes are closed for only about one tenth of a second. People under pressure, for instance when they are lying, are likely to dramatically increase their blinking rate. Extended Blinking is an unconscious attempt by the person's brain to block you from their sight because they've become bored or disinterested or feel they're superior to you. It's as if their brain can no longer tolerate dealing with you so their eyes shut for two to three seconds or longer to wipe you from sight and remain closed as the person momentarily removes you from his mind.", fontnumber2),
                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Superior types may also tilt their head back to give you a 'long look', commonly known as 'looking down one's nose'; this is also done by a person who feels that their importance is not being noticed. This is mainly a Western cultural gesture and a speciality of English people who feel they are upper-class. If you see this happening during a conversation, it's a signal that you're not doing well and that a new tack is needed. If you believe the person is simply arrogant, try this: when they've closed their eyes for the third or fourth time, quickly step a pace to your left or right. When their eyelids lift again, it gives the illusion that you've disappeared and materialised in another place and this can really rattle them. If the person also starts snoring, you can safely assume that your communication has failed.",fontnumber2 ),

                  SizedBox(height:25),
                  buildTextTitleVariation2("Darting Eyes", fontnumber2 ),
                  buildTextSubTitleVariation1("When the eyes dart from side to side it can look as if the person is checking out the activity in the room but the reality is that the brain is searching for escape routes (just as happens in monkeys and apes), revealing a person's insecurity about what is happening. When you're with a particularly boring individual, your natural urge is to look away for escape routes. But because most of us are aware that looking away shows a lack of interest in the other person and signals our desire to escape, we look more at the boring individual and use a Tight-Lipped Smile to feign interest. This behaviour parallels what liars are doing when they increase their eye contact to appear convincing.", fontnumber2),




                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
