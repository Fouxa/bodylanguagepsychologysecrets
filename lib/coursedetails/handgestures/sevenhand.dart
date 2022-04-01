import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class sevenhand extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<sevenhand> {
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

                  OnlineImage2('https://i.ibb.co/tMYFjtG/hand21.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2('Summary', fontnumber2  ),
                  buildTextSubTitleVariation1("Few people have any idea how they come across to others in initial meetings, despite the fact that most of us are aware that the first few minutes of that meeting can make or break a relationship. Take the time to practise handshake styles with your friends and colleagues and you can quickly learn how to deliver a positive handshake every time. Keeping the palms held vertical and matching the other person's grip is usually perceived as a 10/10 handshake.", fontnumber2 ),




                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
