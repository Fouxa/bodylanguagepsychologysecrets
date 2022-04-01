import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class sixsmile extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<sixsmile> {
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
                  OnlineImage2('https://i.ibb.co/W2Mf9Rf/smile61.jpg'),

                  SizedBox(height:25),
                  buildTextTitleVariation2("Laughter In Love", fontnumber2 ),
                  buildTextSubTitleVariation1("Studies found that in courtship, it's also women who do most of the laughing and smiling, not men. Laughing in these contexts is used as a way of determining how successfully a couple is likely to bond in a relationship. Simply put, the more he can make her laugh, the more attractive she will find him. This is because the ability to make others laugh is perceived as a dominant trait and women prefer dominant males, while males prefer subordinate females. Subordinate person will laugh to appease a superior person and the superior person will make subordinates laugh - but without laughing himself — as a way of maintaining his superiority.",fontnumber2 ),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Studies show that women lough at men they're attracted to, and men are attracted to women who laugh at them.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("This explains why having a sense of humour is near the top of women's priority list of what they look for in a man. When a woman says 'He's such a funny guy - we spent the whole night laughing together' she usually means that she spent the night laughing and he spent the night making her laugh.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("From a man's perspective, saying that a woman has a good sense of humour doesn't mean she tells jokes; it means she laughs at his jokes.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("On a deeper level, men seem to understand the attraction value of being humorous and spend much of their time with other men competing to tell the best joke to enhance their own status. Many men also become annoyed when one man dominates the joke-telling, especially when women are present and are also laughing. Men are likely to think the joke-teller is not only a jerk but he isn't particularly funny either, come to think of it - despite the fact he has all the women in fits of laughter. The point for men to understand is that humorous men look more attractive to most women. Fortunately, you can learn to be humorous.", fontnumber2),



                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}

