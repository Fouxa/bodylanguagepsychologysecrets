import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class foursmile extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<foursmile> {
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

                  OnlineImage2('https://i.ibb.co/vv0qRgF/smile33.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2("How Jokes Work", fontnumber2 ),
                  buildTextSubTitleVariation1("The basis of most jokes is that, at the punch line, something disastrous or painful happens to someone. In effect, the unexpected ending 'frightens' our brain, and we laugh with sounds similar to a chimp warning others of imminent danger. Even though we consciously know that the joke is not a real event, our laugh releases endorphins for self-anaesthesis as if the joke was a real event. If it was a real event, we may go into crying mode and the body would also release its endorphins. Crying is often an extension of a laughing bout and is why, in a serious emotional crisis, such as hearing about a death, a person who cannot mentally accept the death may begin laughing. When the reality hits, the laughter turns to crying.",fontnumber2 ),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Smiles and Laughter Are a Way of Bonding', fontnumber2 ),
                  buildTextSubTitleVariation1("Researchers found that laughing was more than 30 times as likely to occur in participants in a social situation than in a solitary setting. Laughter, he found, has less to do with jokes and funny stories and more to do with building relationships. They found that only 15% of our laughter has to do with jokes. Participants were more likely to speak to themselves when alone than they were to laugh. Participants were videotaped watching a humorous video clip in three different situations: alone, with a same-sex stranger and with a same-sex friend.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Only 15% of our laughter has to do with jokes. Laughter has more to do with bonding.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Even though no differences existed between how funny the participants felt the video clip was, those who watched the amusing video clips alone laughed significantly less than did those who watched the video clip with another person present, whether it was a friend or a stranger. The frequency and time spent laughing were significantly greater in both situations involving other person than when the participant was alone. Laughter occurred much more frequently during social interaction. These suits demonstrate that the more social a situation is, the more often people will laugh and the longer each laugh will last.", fontnumber2),


                  SizedBox(height:15),
                  buildTextTitleVariation2('Humour Sells', fontnumber2 ),
                  buildTextSubTitleVariation1("Adding humour to advertisements increases sales. She found that humour makes it more likely that consumers will accept an advertiser's claims and increases source credibility, so that a funny ad with a famous person becomes even more readily accepted.",fontnumber2 ),






                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}