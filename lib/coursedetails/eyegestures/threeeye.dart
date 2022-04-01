import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class threeye extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<threeye> {
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
                  buildTextTitleVariation2("How Men's Fires Get Lit", fontnumber2 ),
                  buildTextSubTitleVariation1("Lowering the eyelids while simultaneously raising the eyebrows, looking up and slightly parting the lips is a cluster that has been used by women for centuries to show sexual submissiveness. Not only does this gesture maximise the distance between the eyelid and eyebrows, it also gives the person a mysterious, secretive look and new research shows that this is the expression many women have on their faces immediately before having an orgasm.",fontnumber2 ),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Gaze Behaviour-Where Do You Look?', fontnumber2 ),
                  buildTextSubTitleVariation1("It is only when you see 'eye to eye' with another person that a real basis for communication can be established. While some people can make us feel comfortable when they talk with us, others make us feel ill at ease and some seem untrustworthy. Initially, this has to do with the length of time that they look at us or with how long they hold our gaze as they speak.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Researchers found that when person A likes person B, he will look at him a lot. This causes B to think that A likes him, so B will like A in return. In other words, in most cultures, to build a good rapport with another person, your gaze should meet theirs about 60 to 70% of the time. This will also cause them to begin to like you. It is not surprising, therefore, that the nervous, timid person who meets our gaze less than one-third of the time is rarely trusted. This is also why, in negotiations, dark tinted glasses should be avoided as they make others feel you are either staring at them or trying to avoid them.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("When two people meet and make eye contact for the first time, it's usually the person who is subordinate who looks away first. This means that not looking away becomes a subtle way to deliver a challenge or show disagreement when someone gives their opinion or point of view. Where the status of the other person is higher, however, for example, the person is your boss, you can send a clear message of disagreement by holding his gaze for only several seconds longer than would be usually acceptable. But it's not a good idea to do this regularly with your boss if you want to keep your job.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Men are equipped with a form of tunnel vision that makes them far better than women at seeing directly in front of them and over long distances for spotting targets. Most men's close range and peripheral vision is far poorer than women's, however, which is why men have difficulty seeing things in refrigerators, cupboards and drawers. Women's peripheral vision extends to at least 45 degrees to each side, above and below, which means she can appear to be looking at someone's face while, at the same time, she is inspecting their goods and chattels.", fontnumber2),




                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
