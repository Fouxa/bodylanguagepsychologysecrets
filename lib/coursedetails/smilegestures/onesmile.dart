import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class onesmile extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;

class _MyHomePageState extends State<onesmile> {
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
                  OnlineImage2('https://i.ibb.co/V9knc1K/smile11.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2("Smiling Is a Submission Signal", fontnumber2 ),
                  buildTextSubTitleVariation1("Smiling and laughing are universally considered to be signals that show a person is happy. We cry at birth, begin smiling at five weeks and laughing starts between the fourth and fifth months. Babies quickly learn that crying gets our attention - and that smiling keeps us there.", fontnumber2),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("In humans, smiling serves much the same purpose as with other primates. It tells another person you are non-threatening and asks them to accept you on a personal level. Lack of smiling explains why many dominant individuals, such as Vladimir Putin, James Cagney, Clint Eastwood, Margaret Thatcher and Charles Bronson, always seem to look grumpy or aggressive and are rarely seen smiling - they simply don't want to appear in any way submissive. And research in courtrooms shows that an apology offered with a smile incurs a lesser penalty than an apology without one.",fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Why Smiling Is Contagious', fontnumber2 ),
                  buildTextSubTitleVariation1("The remarkable thing about a smile is that when you give it to someone, it causes them to reciprocate by returning the smile, even when you are both using fake smiles.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Regular smiling is important to have as a part of your body language repertoire, even when you don't feel like it, because smiling directly influences other people's attitudes and how they respond to you.",fontnumber2 ),





                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}

