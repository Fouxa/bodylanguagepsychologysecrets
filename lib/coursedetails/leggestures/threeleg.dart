import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class threeleg extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<threeleg> {
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




                  SizedBox(height:25),
                  buildTextTitleVariation2("4 Main Standing Positions:", fontnumber2 ),
                  buildTextTitleVariation2("1. At Attention", fontnumber2 ),
                  OnlineImage2('https://i.ibb.co/Svtf19K/leg31.jpg'),


                  SizedBox(height:15),


                  buildTextSubTitleVariation1("This is a formal position that shows a neutral attitude with no commitment to stay or go. In male—female encounters, it is used more by women than men as it effectively keeps the legs together like a 'No Comment' signal. Schoolchildren use it when talking to a teacher, junior officers use it when talking to senior officers, people meeting royalty do it and employees use it when talking to the boss.", fontnumber2),

                  SizedBox(height:25),
                  buildTextTitleVariation2("2. Legs Apart", fontnumber2 ),

                  OnlineImage2('https://i.ibb.co/HTMFwvv/leg32.jpg'),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("This is predominantly a male gesture and is like a standing Crotch Display. The Crotch Displayer plants both feet firmly on the ground, making a clear statement that he has no intention of leaving. It is used as a dominance signal by men because it highlights the genitals, giving the Crotch Displayer a macho-looking attitude.", fontnumber2),
                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Male participants at sports matches can be seen standing around with each other in this position at half time and giving their crotch a continual adjustment. These adjustments have nothing to do with itching - they allow males to highlight their masculinity and show solidarity as a team by all performing the same actions.",fontnumber2 ),

                  SizedBox(height:25),
                  buildTextTitleVariation2("3.The Foot-Forward", fontnumber2 ),

                  OnlineImage2('https://i.ibb.co/4jJ2DRZ/leg33.jpg'),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("The body weight is shifted to one hip, which leaves the front foot pointing forward. Paintings done during the Middle Ages often show high status men standing in the Foot-Forward Position as it allowed them to display their fine hosiery, shoes and breeches.", fontnumber2),
                  SizedBox(height:15),
                  buildTextSubTitleVariation1("This a valuable clue to a person's immediate intentions, because we point our lead foot in the direction our mind would like to go and this stance looks as if the person is beginning to walk. In a group situation, we point our lead foot at the most interesting or attractive person but when we want to leave, we point our feet at the nearest exit.", fontnumber2),
                  SizedBox(height:25),
                  buildTextTitleVariation2("4. Leg Cross", fontnumber2 ),
                  OnlineImage2('https://i.ibb.co/p1jMwWZ/leg34.jpg'),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("The next time you attend a meeting with men and women you will notice some groups of people standing with their arms and legs crossed. Look more closely and you'll also see that they are standing at a greater distance from each other than the customary social distance.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("While open legs can show openness or dominance, crossed legs shows a closed, submissive or defensive attitude as they symbolically deny any access to the genitals.", fontnumber2),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("For a woman, positions like the Scissors and the Single-Leg-Cross send two messages: one, that she intends to stay, not leave; and two, that access is denied. When a man does it, it also shows he'll stay but wants to be sure you don't 'kick him where it hurts'. Open legs display masculinity; closed legs protect masculinity. If he's with men he feels are inferior to him, the Crotch Display feels right; if he's with superior males, however, this gesture makes him look competitive and he feels vulnerable. Studies show that people who lack confidence also take Leg Cross positions.",fontnumber2 ),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Open legs show male confidence dosed legs show male reticence.", fontnumber2),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Imagine now that you notice another group of people standing with arms unfolded, palms visible, coats unbuttoned, relaxed appearance and leaning back on one leg with the other pointing towards others in the group. All are gesturing with their hands and moving in and out of each other's Personal Space. Closer investigation would reveal that these people are friends or are known personally to each other.",fontnumber2 ),


                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Try this: join a group where you know no one and stand with your arms and legs tightly crossed and wear a serious expression. One by one the other group members will cross their arms and legs and remain in that position until you, the stranger, leave. Walk away and watch how, one by one, the members of the group assume their original open poses once again.",fontnumber2 ),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Crossing the legs not only reveals negative or defensive emotions, it makes a person appear insecure and causes others to react accordingly.", fontnumber2),









                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}

