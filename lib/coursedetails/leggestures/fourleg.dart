import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class fourleg extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<fourleg> {
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

                  OnlineImage2('https://i.ibb.co/8MkM06J/leg41.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2("Defensive or Comfortable?", fontnumber2 ),
                  buildTextSubTitleVariation1("Some people will claim that they are not defensive or feeling insecure when they cross their arms or legs, but do it because they're cold. When someone wants to warm his hands he'll thrust them under his armpits rather than tucking them under the elbows, as is the case with a defensive arm-cross. Second, when a person feels cold he may use a type of body hug and when the legs are crossed they are usually straight, stiff and pressed hard against each other as opposed to the more relaxed leg posture of the defensive stance or position.", fontnumber2),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("People who habitually cross their arms or legs prefer to say that they are cold rather than admit that they could be nervous, anxious or defensive. Others simply say they're 'comfortable'. That's probably true — when someone feels defensive or insecure, crossed arms and legs feel comfortable because it matches their emotional state.",fontnumber2 ),


                  SizedBox(height:15),
                  buildTextTitleVariation2("How We Move from Closed to Open", fontnumber2 ),
                  buildTextSubTitleVariation1("As people begin to feel more comfortable in a group and get to know others, they move through a series of movements taking them from the defensive crossed arms and legs position to the relaxed open position. This standing 'opening-up' procedure follows the same sequence everywhere.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("It begins with the closed position, arms and legs crossed. As they begin to feel comfortable with each other and rapport builds, their legs uncross first and their feet are Placed together in the Attention Position. Next, the arm folded on top in the arm-cross comes out and the palm is occasionally flashed when speaking but is eventually not used as a barrier. Instead, it may hold the outside of the other arm in a Single-Arm-Barrier. Both arms unfold next, and one arm gestures or may be placed on the hip or in the pocket. Finally, one person takes the Foot-Forward Position, showing acceptance of the other person",fontnumber2 ),







                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}

