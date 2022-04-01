import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class onehand extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<onehand> {
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
                  OnlineImage2('https://i.ibb.co/NT1d4cb/hand11.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2('How to Detect Openness', fontnumber2),
                  buildTextSubTitleVariation1("When people want to be open or honest, they will often hold one or both palms out to the other person and say something like, 'I didn't do it!', 'I'm sorry if I upset you' or 'I'm telling you the truth'. When someone begins to open up or be truthful, they will likely expose all or part of their palms to the other person. Like most body language signals, this is a completely unconscious gesture, one that gives you an 'intuitive' feeling or hunch that the other person is telling the truth.",fontnumber2 ),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("When men lie their body language can be obvious. Women prefer to look busy as they lie. ",fontnumber2 ),
                  SizedBox(height:15),
                  buildTextSubTitleVariation1("When children are lying or concealing something, they'll often hide their palms behind the back. Similarly, a man who wants to conceal his whereabouts after a night out with the boys might hide his palms in his pockets, or in an arms-crossed position, when he tries to explain to his partner where he was. However, the hidden palms may give her an intuitive feeling that he is not telling the truth. A woman who is trying to hide something will try to avoid the subject or talk about a range of unrelated topics while doing various other activities at the same time.",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Salespeople are taught to watch for a customer's exposed palms when he gives reasons or objections about why he can't buy a product, because when someone is giving valid reasons, they usually show their palms. When people are being open in explaining their reasons they use their hands and flash their palms whereas someone who isn't telling the truth is likely to give the same verbal responses but conceal their hands.", fontnumber2),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Intentional Use of the Palms to Deceive',fontnumber2, ),
                  buildTextSubTitleVariation1("Some people ask, 'If I tell a lie and keep my palms visible, will people be more likely to believe me?' The answer is yes - and no. If you tell an outright lie with your palms exposed, you might still appear insincere to your listeners because many of the other gestures that should also be visible when displaying honesty are absent and the negative gestures used during lying will appear and will be incongruent with the open palms. Con artists and professional liars are people who have developed the special art of making their non-verbal signals complement their verbal lies. The more effectively the professional con artist can use the body language of honesty when telling a lie, the better he is at his job.",fontnumber2 ),

                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
