import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class oneleg extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<oneleg> {
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

                  OnlineImage2('https://i.ibb.co/8sLSHwJ/leg11.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2("Legs are important indicator", fontnumber2 ),
                  buildTextSubTitleVariation1("The farther away from the brain a body part is positioned, the less awareness we have of what it is doing. For example, most people are aware of their face and what expressions and gestures they are displaying and we can even practise some expressions to 'put on a brave face' or 'give a disapproving look', 'grin and bear it' or 'look happy' when Grandma gives you ugly underwear again for your birthday. After our face, we are less aware of our arms and hands, then our chest and stomach and we are least aware of our legs and almost oblivious to our feet", fontnumber2),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("This means that the legs and feet are an important source of information about someone's attitude because most people are unaware of what they are doing with them and never consider faking gestures with them in the way that they would with their face. A person can look composed and in control while their foot is repetitively tapping or making short jabs in the air, revealing their frustration at not being able to escape.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Jiggling the feet is like the brain's attempt to run away from what is being experienced.",fontnumber2 ),






                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
