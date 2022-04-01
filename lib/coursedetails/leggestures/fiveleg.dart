import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class fiveleg extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<fiveleg> {
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

                  OnlineImage2('https://i.ibb.co/Mf7C1KK/leg51.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2("Leg Cross", fontnumber2 ),
                  buildTextSubTitleVariation1("One leg is crossed neatly over the other, with 70% of people crossing left over right. This is the normal crossed-leg position used by European, Asian and British cultures.",fontnumber2 ),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("When a person crosses both legs and arms they have emotionally withdrawn from the conversation and it can be futile to try to be convincing when they sit like this.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("In business contexts, we have found that people sitting like this talk in shorter sentences, reject more proposals and can recall less detail of what was discussed than those who sit with their arms and legs in an open position.", fontnumber2),


                  SizedBox(height:15),
                  buildTextTitleVariation2("The American Figure Four", fontnumber2 ),


                  OnlineImage2('https://i.ibb.co/Wp5kVyV/leg52.jpg'),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("This position is a seated version of a Crotch Display as it highlights the genitals and is used by American males or any cultures that are becoming 'Americanised', such as the youth of Singapore, Japan and the Philippines. It shows that an argumentative or competitive attitude exists. Monkeys and chimps also use genital displays when they are being aggressive, because a good display can avoid the damage that could be inflicted from a physical fight. With all primates, the male with the most impressive display is seen by the others as the winner.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Women who wear trousers or jeans can sometimes be seen sitting in the Figure Four position, but they usually do it only around other women, not men, as they don't want to appear too masculine or to signal sexual availability.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Studies also show that most people make most of their final decision to do something when both feet are on the ground, so the Figure Four is not conducive to asking someone to make a decision.",fontnumber2 ),









                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
