import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class threearm extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;


class _MyHomePageState extends State<threearm> {
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
                  OnlineImage2('https://i.ibb.co/Xp7fKFt/arm31.jpg'),


                  SizedBox(height:25),
                  buildTextTitleVariation2("The Boss vs The Staff", fontnumber2 ),
                  buildTextSubTitleVariation1("Status can influence arm-folding gestures. A superior type can make his superiority felt by not folding his arms, saying, in effect, 'I'm not afraid, so I'll keep my body open and vulnerable.' Let's say, for example, that at a company social function, the general manager is introduced to several new employees. playing greeted them with a Palm-Down handshake, he stands back from them - a yard away (1 metre) - with his hands by his side or behind his back in the Palm-in-Palm position (superiority), or with one or both hands in his pocket (non-involvement). He rarely folds his arms across his chest so as not to show the slightest hint of nervousness.",fontnumber2 ),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Conversely, after shaking hands with the boss, the new employees may take full or partial arm-crossing positions because of their apprehension about being in the presence of the company's top person. Both the general manager and the new employees feel comfortable with their respective gesture clusters as each is signalling his status, relative to the other. But what happens when the general manager meets a young, upand-coming male who is also a superior type and who may even signal that he is as important as the general manager? The likely outcome is that, after the two give each other a dominant handshake, the younger executive may take an armfold gesture with both thumbs pointing upwards.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("This gesture has the arms-crossed plus both thumbs up showing that he's feeling 'cool' and in control. As he talks, he gestures with his thumbs to emphasise points he is making, As we've already discussed, the thumbs-up gesture is a way of showing others we have a self-confident attitude and the folded arms still gives a feeling of protection.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Someone who is feeling defensive but also submissive at the same time will sit in a symmetrical position, which means one side of their body is a perfect mirror of the other. They display tense muscle tone and look as if they expect to be attacked whereas a person who is feeling defensive and dominant will take an asymmetrical pose, that is, one side of the body doesn't mirror the other.",fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Getting theThumbs-Up', fontnumber2 ),
                  buildTextSubTitleVariation1("When you're presenting your case to someone and the Thumbs-Up-Arms-Crossed appears towards the end of your presentation and is clustered with other positive gestures, it signals you can move comfortably into asking the person for a commitment. On the other hand, if at the close of the presentation the other person takes the Fists-Clenched-ArmsCrossed position and has a poker face, you can be inviting trouble by attempting to get a 'yes'. It would be better to ask questions to try to uncover the person's objections. When someone says 'no' to a proposal, it can become difficult to change their mind without looking as if you're aggressive. The ability to read body language allows you to 'see' a negative decision before it is verbalised and gives you time to take an alternative course of action.", fontnumber2),
                  SizedBox(height:15),

                  buildTextSubTitleVariation1("When you can see a 'no' before it's said,you can try a different approach.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("People carrying weapons or wearing armour seldom use armgestures because their weapon or armour provides sufficient body protection. Police officers who wear guns, for example, rarely cross their arms unless they are standing guard and they normally use the fist-clenched position to communicate clearly that nobody is permitted to pass where they are standing.",fontnumber2 ),


                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}

