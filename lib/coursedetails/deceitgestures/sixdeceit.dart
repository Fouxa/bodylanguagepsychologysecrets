import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class sixdct extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<sixdct> {
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
                  buildTextSubTitleVariation1("Acquiring the ability to interpret hand-to-face gestures accurately in a given set of circumstances takes time and observation. When a person uses any of the hand-to-face gestures discussed in this chapter, it's reasonable to assume a negative thought has entered his mind. The question is, however, what is the negative thought? It could be doubt, deceit, uncertainty, exaggeration, apprehension or outright lying. The real skill is the ability to interpret which negative is the correct one. This can best be done by an analysis of the gestures preceding the hand-to-face gesture and interpreting it in context.", fontnumber2),




                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
