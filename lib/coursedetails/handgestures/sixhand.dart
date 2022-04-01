import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class sixhand extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<sixhand> {
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

                  OnlineImage2('https://i.ibb.co/zxNd1r9/hand61.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2('Handshakes of Control', fontnumber2  ),
                  buildTextSubTitleVariation1("The intention of any two-handed handshake is to try to show sincerity, trust or depth of feeling for the receiver. Two significant elements should be noticed. Firstly, the left hand is used to communicate the depth of feeling the initiator wants to convey and this is relative to the distance the initiator's left hand is placed up the receiver's right arm. It's like an intention to embrace and the initiator's left hand is used like a thermometer of intimacy - the further up the receiver's arm it's placed, the more intimacy the initiator is attempting to show. The initiator is both attempting to show an intimate connection with the receiver while, at the same time, attempting to control their movement.",fontnumber2  ),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Secondly, the initiator's left hand is an invasion of the receiver's personal space. In general, the Wrist Hold and the Elbow Grasp are acceptable only where one person feels close to the other and in these cases the initiator's left hand enters only the outer edge of the receiver's personal space. The Shoulder Hold and Upper-Arm Grip show close intimacy and may even result in a hug. Unless the intimate feelings are mutual or the initiator doesn't have a good reason for using a double-handed handshake, the receiver will probably be suspicious and mistrust the initiator's intentions. In summary, if you don't have some sort of personal bond with the other person, don't use any Double-Hander. And if the person who gives you one doesn't have a personal connection with you, look for their hidden agenda.",fontnumber2  ),
                  SizedBox(height:15),
                  buildTextSubTitleVariation1("It's common to see politicians greeting voters using doublehanded handshakes and businesspeople doing it to clients without realising it can be business and political suicide, putting people offside.", fontnumber2 ),

                  SizedBox(height:25),
                  buildTextTitleVariation2('How to Create Rapport',fontnumber2 ),
                  buildTextSubTitleVariation1("There are two key ingredients for creating rapport in a handshake. First, make sure that yours and the other person's palms are in the vertical position so that no one is dominant or sub! missive. Second, apply the same pressure you receive. This means that if, on a firmness scale of 1-10, your handshake registers a 7 but the other person is only a 5, you'll need to back off 20% in strength. If their grip is a 9 and yours is a 7, you'll need to increase your grip by 20%. If you were meeting a group of ten people, you'd probably need to make several adjustments of angle and intensity to create a feeling of rapport with everyone and to stay on an equal footing with each person. Also keep in mind that the average male hand can exert around twice the power of the average female hand, so allowances must be made for this. Evolution has allowed male hands to exert a grip of up to 100 pounds (45kg) for actions such as tearing, gripping, carrying, throwing and hammering. Remember that the handshake evolved as a gesture to say hello or goodbye or to seal an agreement so it always needs to be warm, friendly and positive.",fontnumber2  ),

                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
