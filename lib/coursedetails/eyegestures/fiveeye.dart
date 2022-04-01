import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class fiveeye extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<fiveeye> {
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

                  OnlineImage2('https://i.ibb.co/Q8tDkVf/eye51.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2('Most Liars Look You in the Eye', fontnumber2 ),
                  buildTextSubTitleVariation1("Many people associate lying with looking away. Researchers conducted a series of experiments where participants were told to tell a series of lies to others in recorded interviews. The recordings were used in our communication seminars where viewers were asked to judge who was lying and who wasn't. What we discovered was contrary to a popular belief about liars. Approximately 30% of the liars constantly looked away when they lied and the viewers spotted these lies around 80% of the time, with women having a better catch rate than men. The other 70% of the liars maintained strong eye contact with their victim, assuming they were less likely to get caught if they did the opposite of what people expected. They were right. Lie-catching dropped to an average of 25%, with men scoring a dismal 15% success and women 35%. Women's more intuitive brains were better than men's in detecting voice changes, pupil dilation and other cues that gave the liar away. This shows that gaze alone is not a reliable signal of lying and you need to observe other gestures as well. When a person's gaze meets yours for more than two-thirds of the time, it can mean one of two things: first, he finds you interesting or appealing, in which case he'll also have dilated pupils; or second, he's hostile towards you and could be issuing a challenge, in which case the pupils will be constricted. As mentioned, women are good at deciphering pupil signals and can differentiate interest from aggression, but men are significantly worse at doing it. This is why the average man can't tell if a woman is about to give him a kiss or a slap in the face.",fontnumber2 ),

                  SizedBox(height:25),
                  buildTextTitleVariation2('How to Avoid being Attacked or Abused', fontnumber2 ),
                  buildTextSubTitleVariation1("Most primates avert their gaze to show submission. If an ape is going to display aggression or is likely to attack, it will lock eyes onto its victim. To avoid being attacked, the victim win look away and try to make itself appear smaller. Scientific evidence shows that submission behaviour appears to be hardwired into primate brains for survival reasons. Under attack, we make ourselves appear smaller by hunching our shoulders, pulling our arms in close to the body, pressing our knees together and locking our ankles under a chair, dropping our chin to the chest to protect the throat and averting our gaze by looking away. These gestures activate an 'off switch' in the brain of the aggressor and the attack can be avoided.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Making yourself appear smaller turns off the aggression switch in an aggressor's brain.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("This is an ideal position to take if you are being reprimanded by a superior when you actually deserve the reprimand, but it would be detrimental against a random street attack. From a person who is walking past a group of possible assailants in the street it would signal fear and this can contribute to inciting an attack. If you walk upright with larger movements, swinging your arms and legs and having your front open, you will project that you could defend yourself if necessary and so are less likely to be attacked.",fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('The Sideways Glance', fontnumber2 ),
                  buildTextSubTitleVariation1("The Sideways Glance is used to communicate interest, uncertainty or hostility. When it is combined with slightly raised eyebrows or a smile, it communicates interest and is frequently used as a courtship signal, mostly by women. If it is clustered with down-turned eyebrows, furrowed brow or the corners of the mouth down-turned, it signals a suspicious, hostile or critical attitude.", fontnumber2),




                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}