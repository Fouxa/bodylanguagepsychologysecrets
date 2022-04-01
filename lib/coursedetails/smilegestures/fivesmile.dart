import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class fivesmile extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<fivesmile> {
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

                  OnlineImage2('https://i.ibb.co/drWYs9N/smile51.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2("Permanent Down-Mouth", fontnumber2 ),
                  buildTextSubTitleVariation1("The opposite to pulling up the corners of the mouth to show happiness is pulling both corners downward to show the Down-Mouth expression. This is done by the person who feels unhappy, despondent, depressed, angry or tense. Unfortunately, if a person holds these negative emotions throughout their lifetime, the corners of the mouth will set into a permanent down position.",fontnumber2 ),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("In later life, this can give a person an appearance similar to a bulldog. Studies show that we stand further away from people who have this expression, give them less eye contact and avoid them when they are walking towards us. If you disover that the Down-Mouth has crept into your repertoire, practise smiling regularly, which will not only help you avoid looking like an angry canine in later life, but will make you feel more positive. It will also help you avoid frightening little children and being thought of as a grumpy old cow.",fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Smiling Advice For Women', fontnumber2 ),

                  OnlineImage2('https://i.ibb.co/0YF6SFt/smile52.jpg'),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Research shows that women smile far more than men in both social and business situations, which can make a woman appear to be subordinate or weak in an encounter with unsmiling men. Some people claim that women's extra smiling is the result of women historically being placed by men into subordinate roles, but other research shows that by the age of eight weeks, baby girls smile far more than baby boys, so it's probably inborn as opposed to learned. The likely explanation is that smiling fits neatly into women's evolutionary role as pacifiers and nurturers. It doesn't mean a woman can't be as authoritative as a man; but the extra smiling can make her look less authoritative.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Research showed that, in social encounters, women smile 87% of the time versus 67% for men and that women are 26% more likely to return smiles from the opposite sex. An experiment using 15 photographs of women showing happy, sad and neutral faces were rated for attractiveness by 257 respondents. The women with the sad expressions were considered the least attractive. Pictures of unsmiling women were decoded as a sign of unhappiness while pictures of unsmiling men were seen as a sign of dominance. The lessons here are for women to smile less when dealing with dominant men in business or to mirror the amount of smiling that men do. And if men want to be more persuasive with women, they need to smile more in all contexts.",fontnumber2 ),





                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
