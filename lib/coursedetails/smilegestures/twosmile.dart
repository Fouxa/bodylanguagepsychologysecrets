import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class twosmile extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<twosmile> {
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

                  OnlineImage2('https://i.ibb.co/8cLhKDD/smile21.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2("Practising the Fake Smile", fontnumber2 ),
                  buildTextSubTitleVariation1("Most people can't consciously differentiate between a fake smile and a real one, and most of us are content if someone is simply smiling at us — regardless of whether it's real or false. Because smiling is such a disarming gesture", fontnumber2),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("when people deliberately lie, most, especially men, smile less than they usually do. This is because liars realise that most people associate smiling with lying so they intentionally decrease their smiles. A liar's smile comes more quickly than a genuine smile and is held much longer, almost as if the liar is wearing a mask.", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("A false smile often appears stronger on one side of the face than the other, as both sides of the brain attempt to make it appear genuine. The half of the brain's cortex that specialises in facial expressions is in the right hemisphere and sends signals mainly to the left side of the body. As a result, false facial emotions are more pronounced on the left side of the face than the right. In a real smile, both brain hemispheres instruct each side of the face to act with symmetry.", fontnumber2),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Smugglers Smile Less', fontnumber2 ),
                  buildTextSubTitleVariation1("It had been assumed by law enforcement officers that liars increased their frequency of smiling when they were lying or under pressure. Analysis of people who were intentionally told to lie showed the opposite - when the liars lied, they smiled less or not at all, regardless of culture. People who were innocent and telling the truth increased their smiling frequency when being honest. Because smiling is rooted in submission, the innocent people were attempting to appease their accusers while the professional liars were reducing their smiles and other body signals. It's the same as when a police car pulls up next to you at traffic lights -even though you haven't broken the law, the presence of the police is enough to make you feel guilty and start smiling. This highlights how fake smiling is controlled and should always be considered in the context of where it occurs.", fontnumber2),






                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
