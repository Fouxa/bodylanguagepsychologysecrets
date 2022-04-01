import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class eightleg extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<eightleg> {
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



                  SizedBox(height:15),
                  buildTextTitleVariation2("Summary", fontnumber2 ),
                  buildTextSubTitleVariation1("Our feet tell others where we want to go and who we do or don't like. If you are a woman, avoid crossing your legs when you're sitting with businessmen unless you are wearing an Aline dress or at least one that is below the knee-line. The sight of a woman's thighs is distracting to almost all men and detracts from her message. They'll remember who she was but won't remember much of what she had to say.",fontnumber2 ),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Many women Wear shorter dresses in business because this appearance is continually thrust at them by the media; over 90% of all female television hosts are presented with short dresses and exposed legs. This is because studies prove that male viewers Will watch the programme for longer, but the same studies also show that the more leg a woman shows, the less men can remember the content of what she said. The rule here is simple — for social contexts, exposed crossed legs are fine but don't do it in business. If you're a man dealing with women in business the same rule applies - keep your knees together.", fontnumber2),






                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
