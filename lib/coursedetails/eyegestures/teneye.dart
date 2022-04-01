import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class teneye extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<teneye> {
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
                  buildTextTitleVariation2("Summary", fontnumber2 ),
                  buildTextSubTitleVariation1("Where you direct your gaze has a powerful impact on the outcome of a face-to-face encounter. If you were a manager who was going to reprimand an errant subordinate or a parent reprimanding a child, which gaze would you use? If you use Social Gazing, the sting would be taken out of your words, regardless of how loud or threatening you might try to sound. Social Gazing would weaken your words but Intimate Gazing could either intimidate or embarrass them. Power Gazing, however, has a powerful effect on the receiver and tells them you mean business. ",fontnumber2 ),




                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
