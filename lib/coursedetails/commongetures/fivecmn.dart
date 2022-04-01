import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class fivecmn extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<fivecmn> {
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
                  OnlineImage2('https://i.ibb.co/ftvkyvJ/cmn51.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2("Gestures That Show When a Person is Ready", fontnumber2 ),
                  buildTextSubTitleVariation1("One of the most valuable gestures a negotiator can learn to recognise is seated readiness. When you are presenting a proposal, for example, if the other person were to take this gesture at the end of the presentation, and the interview had gone well up to that point, you could ask for agreement and would be likely to get it.",fontnumber2 ),

                  SizedBox(height:15),
                  buildTextTitleVariation2("The Starter's Position", fontnumber2 ),
                  buildTextSubTitleVariation1("Readiness gestures that signal a desire to conclude a meeting include leaning forward with both hands on both knees, or leaning forward with both hands gripping the chair as if they were at the start of a race. If either of these occur during a conversation it would be wise for you to take the lead and resell, change direction or terminate the conversation.",fontnumber2 ),





                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
