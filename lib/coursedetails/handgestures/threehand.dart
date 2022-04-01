import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class threehand extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<threehand> {
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
                  OnlineImage2('https://i.ibb.co/BfvMLKs/hand31.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2('Analysis of Handshake Styles', fontnumber2 ),
                  buildTextSubTitleVariation1("The modern form of this ancient greeting ritual is the interlocking and shaking of the palms and was originally used in the nineteenth century to seal commercial transactions between men of equal status. It has become widespread only in the last hundred years or so and has always remained in the male domain until recent times. In most Western and European countries today it is performed both on initial greeting and on departure in all business contexts, and increasingly at parties and social events by both women and men.", fontnumber2 ),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("The handshake evolved as a way men could cement a commercial deal with each other.", fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Even in places such as Japan, where bowing is the traditional greeting, and Thailand, where they greet using the Wai — a gesture that looks similar to praying — the modern handshake is now widely seen. In most places, the hands are normally pumped five to seven times but in some countries, for example Germany, they pump two or three times with an additional hold time equal to an extra two pumps. The French are the biggest glad-handers, shaking on both greeting and departure and spending a considerable time each day shaking hands.",fontnumber2  ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Who Should Reach First?', fontnumber2  ),
                  buildTextSubTitleVariation1("Although it is a generally accepted custom to shake hands when meeting a person for the first time, there are some circumstances in which it may not be appropriate for you to initiate a handshake. Considering that a handshake is a sign of trust and welcome, it is important to ask yourself several questions before you initiate the hand shake: Am I welcome? Is this person happy to meet me or am I forcing them into it? SalesPeople are taught that if they initiate a handshake with a customer on whom they call unannounced or uninvited, it can Produce a negative result as the buyer may not want to welcome them and feels forced to shake hands. Under these circumstances, salespeople are advised that it is better to wait for the other person to initiate the handshake and, if it is not forthcoming, use a small head-nod as the greeting. In some countries, shaking hands with a woman is still an uncertain practice (for example, in many Muslim countries it would be considered rude to do so; instead a small head-nod is acceptable), but it's now been found that women who initiate a firm handshake are rated — in most places — as more open-minded and make better first impressions.",fontnumber2  ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('How Dominance and Control Are Communicated', fontnumber2  ),
                  buildTextSubTitleVariation1("Considering what has already been said about the impact of the Palm-Up and Palm-Down gestures, let's explore their relevance in handshaking. In Roman times, two leaders would meet and greet each other with what amounted to a standing version of modern arm wrestling. If one leader was stronger than the other, his hand would finish above the other's hand in what became known as the Upper Hand position. Let's assume that you have just met someone for the first time and you greet each other with a handshake. One of three basic attitudes is subconsciously transmitted:", fontnumber2 ),

                  SizedBox(height:10),

                  buildTextSubTitleVariation1("1. Dominance: 'He is trying to dominate me. I'd better be cautious.'", fontnumber2 ),

                  SizedBox(height:10),

                  buildTextSubTitleVariation1("2. Submission: 'I can dominate this person. He'll do what I want.'", fontnumber2 ),

                  SizedBox(height:10),

                  buildTextSubTitleVariation1("3. Equality: 'I feel comfortable with this person.'", fontnumber2 ),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Dominance is transmitted by turning your hand (striped sleeve) so that your palm faces down in the handshake (see below). Your palm doesn't have to face directly down, but is the upper hand and communicates that you want to take control of the encounter.", fontnumber2 ),

                  OnlineImage2('https://i.ibb.co/CW2Q4HC/hand32.jpg'),

                  SizedBox(height:25),
                  buildTextTitleVariation2('The Submissive Handshake', fontnumber2  ),

                  SizedBox(height:10),
                  buildTextSubTitleVariation1("The opposite of the dominant handshake is to offer your hand (striped sleeve) with your palm facing upwards (as below), symbolically giving the other person the upper hand, like a dog exposing its throat to a superior dog. ", fontnumber2 ),
                  SizedBox(height:15),
                  buildTextSubTitleVariation1("This can be effective if you want to give the other person control or allow him to feel that he is in charge of the situation if for example, you were making an apology. While the palm-up handshake can communicate a submissive attitude, there are sometimes other circumstances to consider. As we have seen, a person with arthritis in their hands will be forced to give you a limp handshake because of their condition and this makes it easy to turn their palm into the submissive position. People who use their hands in their profession, such as surgeons, artists and musicians, may also give a limp handshake, purely to protect their hands. The gesture clusters they use following their handshake will give further clues for your assessment of them - a submissive person will use more submissive gestures and a dominant person will use more assertive gestures.",fontnumber2  ),
                  OnlineImage2('https://i.ibb.co/LCkBGZS/hand33.jpg'),

                  SizedBox(height:25),
                  buildTextTitleVariation2('How to Create Equality', fontnumber2  ),
                  buildTextSubTitleVariation1("When two dominant people shake hands, a symbolic power struggle takes place as each person attempts to turn the other's palm into the submissive position. The result is a vice-like handshake with both palms remaining in the vertical position and this creates a feeling of equality and mutual respect because neither is prepared to give in to the other.", fontnumber2 ),

                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
