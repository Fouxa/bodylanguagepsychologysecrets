import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class fourhand extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<fourhand> {
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

                  OnlineImage2('https://i.ibb.co/x5Tm56J/hand41.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2('How to Disarm a Power Player', fontnumber2  ),
                  buildTextSubTitleVariation1("The Palm-Down Thrust is reminiscent of the Nazi salute and is the most aggressive of all handshakes because it gives the receiver little chance of establishing an equal relationship. This handshake is typical of the overbearing, dominant person who always initiates it, and their stiff arm with palm facing downwards forces the receiver into the submissive position.",fontnumber2  ),
                  SizedBox(height:15),
                  buildTextSubTitleVariation1("If you feel someone is giving a Palm-Down Thrust to you on purpose, here are several counters to it:",fontnumber2  ),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("1.The Step-to-the-RightTechnique", fontnumber2 ),
                  SizedBox(height:15),

                  buildTextSubTitleVariation1("If you receive a dominant handshake from a power player — and it's mostly men who do it - it is not only difficult to turn his palm back up into an equal position, but it's obvious when you do it. This technique involves first stepping forward with your left foot as you reach to shake hands. This takes a little practice, as stepping forward on the right foot is the natural position for 90% of people when shaking with the right hand.",fontnumber2  ),
                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Next, step forward with your right leg, moving across in front of the person and into his personal space. Finally, bring your left leg across to your right leg to complete the manoeuvre (see below), and shake the person's hand. This tactic allows you to straighten the handshake or even turn it over into the submissive position. It feels as if you're walking across in front of him and is the equivalent of winning an arm-wrestling bout. It also allows you to take control by invading his personal space.",fontnumber2  ),
                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Analyse your own approach to shaking hands and notice whether you step forward on your left or right foot when you extend your arm to shake hands. Most people are right footed and are therefore at a disadvantage when they receive a dominant handshake because they have little room to move and it allows the other person to dominate. Practise stepping into a handshake with your left foot and you will find that it is easier to deal with the power players who would try to control you.", fontnumber2 ),


                  SizedBox(height:15),
                  buildTextSubTitleVariation1("2.The Hand-on-Top Technique",fontnumber2  ),

                  buildTextSubTitleVariation1("When a power player presents you with a Palm-Down Thrust, respond with your hand in the Palm-Up position then put your left hand over his right to form a Double-Hander and straighten the handshake.", fontnumber2 ),
                  SizedBox(height:15),
                  buildTextSubTitleVariation1("This switches the power from him to you and is a much simpler way of dealing with the situation, and is much easier for women to use. If you feel the power player is purposefully trying to intimidate, and he does it regularly, grasp his hand on top and then shake it (as below). This can shock a power player so you need to be selective when using it and do it only as a last resort.",fontnumber2  ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('The Cold, Clammy Handshake', fontnumber2  ),
                  buildTextSubTitleVariation1("No one likes receiving a handshake that feels like you've been handed four cold breakfast sausages. If we become tense when meeting strangers, blood diverts away from the cells below the outer layer of the skin on the hands - known as the dermis - and goes to the arm and leg muscles for 'fight or flight' preparation. The result is that our hands lose temperature and begin to sweat, making them feel cold and clammy and resulting in a handshake that feels like a wet salmon. Keep a handkerchief in a pocket or handbag so that you can dry your palms immediately before meeting someone important so you don't make a poor first impression. Alternatively, before a new meeting, simply visualise that you are holding your palms in front of an open fire. This visualisation technique is proven to raise the temperature of the average person's palm by 3-4 degrees.", fontnumber2 ),






                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
