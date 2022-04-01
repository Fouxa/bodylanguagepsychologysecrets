import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class sevenleg extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<sevenleg> {
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

                  OnlineImage2('https://i.ibb.co/Z2H2Mzt/leg71.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2("Short Skirt Syndrome", fontnumber2 ),
                  buildTextSubTitleVariation1("Women who wear mini-skirts cross their legs and ankles for obvious, necessary reasons. Through years of habit, however, many older women still sit in this position, which can not only make them feel restrained, but others are likely to unconsciously read it as negative and react towards these women with caution.",fontnumber2 ),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Mini-skirts can give a woman the appearance that she's not approachable.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Some people will still claim they sit in the Ankle Lock position, or for that matter any negative arm and leg position, because they feel 'comfortable'. If you are in this category, remember that any arm or leg position will feel comfortable when you hold a defensive, negative or reserved attitude.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("A negative gesture can increase or prolong a negative attitude, and other people will read you as being apprehensive, defensive or non-participant. Practise using positive and open gestures; this will improve your self-confidence and others will perceive you in a more positive way", fontnumber2),


                  SizedBox(height:25),
                  buildTextTitleVariation2("Parallel-Legs", fontnumber2 ),
                  SizedBox(height:15),
                  OnlineImage2('https://i.ibb.co/WtWxBJ5/leg72.jpg'),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Because of the bone configuration of female legs and hips, most men can't sit like this so it becomes a powerful signal of femininity. Not surprisingly, over 86% of male participants in our leg rating surveys voted this the most attractive female sitting position.",fontnumber2 ),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("One leg presses against the other and gives the legs a healthier, more youthful look, which appeals to men from a reproductive standpoint. This is the position taught to women in deportment and modelling classes. This position should not be confused with the woman who constantly crosses and uncrosses her legs when she's with a man she fancies - this is done to draw attention to her legs.", fontnumber2),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("When we're interested in either a conversation or a person, we put one foot forward to shorten the distance between us and that person. If we're reticent or not interested, we put our feet back, usually under a chair if seated.",fontnumber2 ),







                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
