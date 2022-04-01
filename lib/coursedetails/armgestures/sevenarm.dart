import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class sevenarm extends StatefulWidget {
 // sevenarm({required Key key, required this.title}) : super(key: key);

 // final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;

class _MyHomePageState extends State<sevenarm> {
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
                  buildTextSubTitleVariation1("It makes no difference how you look at it, any crossing of the arms in front of the body is seen as negative and the message is as much in the mind of the receiver as the sender. Even if you fold your arms because, for example, you have a backache, an observer will still unconsciously perceive you as closed to their ideas. Make a decision now to practise not crossing your arms and in the following chapters we will show you what to do to project a more positive, confident image.", fontnumber2),


                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}

