import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class onearm extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;

class _MyHomePageState extends State<onearm> {
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

                    OnlineImage2('https://i.ibb.co/4SDcVXM/arm11.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2("Crossed Arms Can be Detrimental", fontnumber2 ),
                  buildTextSubTitleVariation1("Research conducted in the United States into the CrossedArms gesture has shown some worrying results. A group of volunteers was asked to attend a series of lectures and each student was instructed to keep his legs uncrossed, arms unfolded and to take a casual, relaxed sitting position. At the end of the lectures each student was tested on his retention and knowledge of the subject matter and his attitude towards the lecturer was recorded. A second group of volunteers was put through the same process, but these volunteers were instructed to keep their arms tightly folded across their chests throughout the lectures. The results showed that the group with the folded arms had learned and retained 38% less than the group who kept its arms unfolded. The second group also had a more critical opinion of the lectures and of the lecturer.",fontnumber2 ),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("When you fold your arms your credibility dramatically reduces.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("When a listener folds his arms, not only does he have more negative thoughts about the speaker, but he's also paying less attention to what's being said. It's for this reason that training centres should have chairs with arms to allow the attendees to leave their arms uncrossed.",fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2("Yes...But I'm Just 'Comfortable'", fontnumber2 ),
                  buildTextSubTitleVariation1("Some people claim that they habitually cross their arms because it's comfortable. Any gesture will feel comfortable when you have the corresponding attitude; that is, if you have a negative, defensive or nervous attitude, folded arms will feel comfortable. If you're having fun with your friends, folded arms will feel wrong.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Remember that with all body language, the meaning of the message is also in the receiver, as well as the sender. You may feel 'comfortable' with your arms crossed and your back and neck stiffened, but studies have shown that others' reactions to these gestures is negative. So the lesson here is clear - avoid crossing your arms under any circumstances unless your intention is to show others you don't agree or don't want to participate. You may feel arm-crossing is simply comfortable but others will think you're not approachable.", fontnumber2),


                  SizedBox(height:25),
                  buildTextTitleVariation2("Gender Differences", fontnumber2 ),
                  buildTextSubTitleVariation1("Men's arms rotate slightly inwards while women's arms rotate slightly outwards. These rotation differences have enabled men to aim and throw more accurately, while women's splayed elbows give them a wider, more stable position for carrying babies. One interesting difference is that women tend to keep their arms more open when they are around men they find attractive and are likely to fold their arms across their breasts around aggressive or unattractive men.",fontnumber2 ),


                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}

