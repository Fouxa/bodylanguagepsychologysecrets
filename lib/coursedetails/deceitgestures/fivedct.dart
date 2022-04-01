import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class fivedct extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<fivedct> {
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
                  buildTextTitleVariation2("Rubbing and Slapping Gestures", fontnumber2 ),
                  buildTextSubTitleVariation1("When you say someone 'gives you a pain in the neck', you are referring to the ancient reaction of the tiny erector pillae muscles on the neck — often called goosebumps — attempting to make your non-existent fur pelt stand on end to make yourself appear more intimidating because you are feeling threatened or angry. It's the same hairraising reaction an angry dog has when it's confronted by another potentially hostile dog. This reaction causes the tingling feeling you experience on the back of your neck when you feel frustrated or fearful. You'll usually rub your hand over the area to satisfy the sensation.",fontnumber2 ),

                  SizedBox(height:15),
                  buildTextTitleVariation2("", fontnumber2 ),
                  buildTextSubTitleVariation1("Those who habitually rub the back of the neck have a tendency to be negative or critical, whereas those who habitually rub their foreheads to non-verbalise an error tend to be more open and easy-going.", fontnumber2),






                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
