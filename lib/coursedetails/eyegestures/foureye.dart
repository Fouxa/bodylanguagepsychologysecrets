import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class foureye extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<foureye> {
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

                  OnlineImage2('https://i.ibb.co/g61cwTp/eye31.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2("How to Grab a Man's Attention", fontnumber2 ),
                  buildTextSubTitleVariation1("When a woman wants to get a man's attention across a room she will meet his gaze, hold it for two to three seconds, then look away and down. This gaze is long enough for her to send him a message of interest and potential submission. An experiment by Monika Moore PhD, of Websters University, showed that most men are not hardwired to read a woman's first gaze signal so she usually needs to repeat it three times before the average man picks up on it, four times for really slow men and five or more times for the especially thick. When she finally gets his attention she will often use a small version of the Eyebrow Flash that is a small, subtle eye-widening gesture that tells him the signal was intended for him. Sometimes a simple face-to-face verbal approach of 'Hey, I like you!' is more effective on men who are slow on the uptake.",fontnumber2 ),



                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
