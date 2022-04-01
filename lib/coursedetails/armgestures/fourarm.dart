import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class fourarm extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;

class _MyHomePageState extends State<fourarm> {
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
                  buildTextTitleVariation2("Hugging Yourself", fontnumber2 ),
                  SizedBox(height:15),
                  OnlineImage2('https://i.ibb.co/wRFsjcm/arm41.jpg'),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("When we were children our parents or carers embraced or hugged us when we faced distressing or tense circumstances. As adults, we often attempt to recreate those same comforting feelings when we find ourselves in stressful situations. Rather than take a full arm-cross gesture, which can tell everyone we are fearful, women often substitute a subtler version - a PartialArm-Cross, where one arm swings across the body to hold or touch the other arm to form the barrier and it looks as if she is hugging herself. Partial arm barriers are often seen in meetings where a person may be a stranger to the group or is lacking in self-confidence. Any woman taking this position in a tense situation will usually claim she is just being 'comfortable'.", fontnumber2),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Men use a partial arm barrier known as Holding-Hands With Yourself', fontnumber2 ),
                  SizedBox(height:15),
                  //https://i.ibb.co/mDMcCgf/arm42.jpg
                  OnlineImage2('https://i.ibb.co/mDMcCgf/arm42.jpg'),
                  SizedBox(height:15),

                  buildTextSubTitleVariation1("It's commonly used by men who stand in front of a crowd to receive an award or give a speech. Also known as the Broken Zipper Position it makes a man feel secure because he can protect his 'crown jewels' and can avoid the consequences of receiving a nasty frontal blow. It's the same position men take in a line at a soup kitchen or to receive social security benefits and reveals their dejected, vulnerable feelings. It recreates the feeling of having someone else hold your hand.",fontnumber2 ),



                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}

