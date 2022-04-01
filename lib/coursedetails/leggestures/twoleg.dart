import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class twoleg extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<twoleg> {
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

                  OnlineImage2('https://i.ibb.co/GkrrpGb/leg21.jpg'),


                  SizedBox(height:15),
                  buildTextTitleVariation2("How Feet Tell the Truth", fontnumber2 ),
                  buildTextSubTitleVariation1("Body language researchers conducted a series of tests with managers, who were instructed to lie convincingly in a series of staged interviews. We found that the managers, regardless of gender, dramatically increased the unconscious number of foot movements they made when they were lying. Most managers used fake facial expressions and tried to control their hands while lying but almost all were unaware of what their feet and legs were doing. These results were verified by psychologist Paul Ekman, who discovered that not only do people increase their lower body movements when they lie but observers have greater success exposing a person's lies when they can see the liar's entire body. This explains why many business executives feel comfortable only when sitting behind a desk with a solid front, where their lower body is hidden.",fontnumber2 ),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("if you're not sure whether you're being lied to or not, look under their desk.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Glass-topped tables cause us more stress than solid tables, as our legs are in full view and so we don't feel as if we are in full control.", fontnumber2),


                  SizedBox(height:25),
                  buildTextTitleVariation2("Everybody's Talking About a New Way of Walking", fontnumber2 ),
                  buildTextSubTitleVariation1("The way people swing their arms when they walk gives insight into their personality — or what they want you to believe they're like. When young, healthy, vibrant people walk, they walk faster than older people, which results in their arms swinging higher in front and behind, and can even make it look as if they're marching. This is partly due to their additional speed and greater muscle flexibility. As a consequence of this, the army march evolved as an exaggerated walk to portray the effect that the marchers are youthful and vigorous. This same walk has been adopted by many politicians and public figures who want to send out a message of their vitality. That is why striding is a popular gait with many politicians. Women's arms tend to swing even further back because their arms bend further out from the elbow to enable them to carry babies more effectively.", fontnumber2),


                  SizedBox(height:25),
                  buildTextTitleVariation2("The Purpose of the Legs", fontnumber2 ),
                  buildTextSubTitleVariation1("The legs evolved in humans to serve two purposes: to move forward to get food and to run away from danger. Because the human brain is hardwired for these two objectives - to go towards what we want and move away from what we don't want - the way a person uses their legs and feet reveals where they want to go. In other words, they show a person's commitment to leaving or staying in a conversation. Open or uncrossed leg positions show an open or dominant attitude, while crossed positions reveal closed attitudes or uncertainty.",fontnumber2 ),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("A woman who is not interested in a man will fold her arms on her chest and cross her legs away from him giving him the 'no-go' body language while an interested woman would open herself to him.", fontnumber2),






                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
