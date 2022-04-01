import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class sixleg extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<sixleg> {
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



                  SizedBox(height:15),
                  buildTextTitleVariation2("When the Body Closes, so Does the Mind", fontnumber2 ),
                  buildTextSubTitleVariation1("Body language researchers attended a conference where the audience was split 50/50 male and female and was comprised of about 100 managers and 500 salespeople. A controversial issue was being discussed - the treatment of salespeople by corporations. A well-known speaker who was head of the 'salespersons' association was asked to address the group. As he took the stage almost all the male managers and around 25% of the female managers took the defensive Arms-and-Legs-Crossed position, revealing how threatened they felt by what they thought he would say. Their fears were well founded. He raged about the poor quality of management and how this was a major contributing factor to the industry's staffing problems. Throughout his speech, most salespeople in the audience were either leaning forward showing interest or using evaluation gestures, but the managers held their defensive position.", fontnumber2),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("When the mind closes,the body follows.", fontnumber2),


                  SizedBox(height:15),
                  buildTextSubTitleVariation1("The salesperson then discussed what he believed the manager's role should be, relative to salespeople. Almost as if they were players in an orchestra who had been given a command by the orchestra leader, most of the male managers shifted to the Figure Four position. They were now mentally debating the salesperson's point of view and many later confirmed that this had been the case. We noticed that some managers had not changed their posture. Even though most had also disagreed with the speaker's views, some were unable to take the Figure Four because of physical or medical conditions such as being overweight, having leg problems or arthritis.",fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2("Takeaway", fontnumber2 ),
                  buildTextSubTitleVariation1("If you're trying to persuade someone who sits in any of these positions you should attempt to get them to uncross before continuing. If you have something to show, invite them to sit beside you or give them things to do or to hold so that they lean forward to write notes or hold brochures and samples. Offering tea or coffee also works well as it makes it hard for a person to cross their arms and legs without burning themself.", fontnumber2),


                  SizedBox(height:15),
                  buildTextTitleVariation2("Figure Four Leg Clamp", fontnumber2 ),
                  buildTextSubTitleVariation1("Not only does this person have a competitive attitude, they lock the Figure Four into a permanent position using one or both hands as a clamp. This is a sign of the tough-minded, stubborn individual who rejects any opinion other than their own.", fontnumber2),


                  SizedBox(height:15),
                  buildTextTitleVariation2("The Ankle Lock", fontnumber2 ),
                  SizedBox(height:15),
                  OnlineImage2('https://i.ibb.co/rG0xNWs/leg61.jpg'),


                  SizedBox(height:15),
                  buildTextSubTitleVariation1("The male version of the Ankle Lock is often combined with clenched fists resting on the knees or with the hands tightly gripping the arms of the chair and a seated Crotch Display. The female version varies slightly: the knees are held together, the feet may be to one side and the hands rest side by side or one on top of the other resting on the upper legs.",fontnumber2 ),


                  SizedBox(height:15),
                  buildTextSubTitleVariation1("When an interviewee locks his ankles, he is mentally 'biting his lip'. The gesture shows that he is holding back a negative emotion, uncertainty or fear. The feet are usually withdrawn under the chair, showing that the person also has a withdrawn attitude. When people are involved in a conversation, they also put their feet into the conversation.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Body language experiment with lawyers showed that defendants who sat outside the courtroom just prior to a hearing were three times more likely than the plaintiffs to have their ankles tightly locked under their chairs as they tried to control their emotional state.", fontnumber2),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("When one party locked his ankles during a negotiation it often meant that he was holding back a valuable concession. Using questioning techniques we can often encourage him to unlock his ankles and reveal the concession.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Asking positive questions about their feelings can often get others to unlock their ankles", fontnumber2),








                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
