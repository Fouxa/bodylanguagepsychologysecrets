import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class sixarm extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;

class _MyHomePageState extends State<sixarm> {
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
                  OnlineImage2('https://i.ibb.co/CVV91tC/arm61.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2("The Power of Touch", fontnumber2 ),
                  buildTextSubTitleVariation1("Touching a person with your left hand while shaking hands with your right hand can create a powerful result.", fontnumber2),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Skillful elbow-touching can give you up to three times the chance of getting what you want",fontnumber2 ),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("There are three reasons this technique works: first, the elbow is considered a public space and is far away from intimate parts of the body; second, touching a stranger is not considered acceptable in most countries so it creates an impression; and third, a light, three-second elbow touch creates a momentary bond between two people. When we replicated this experiment for a television programme, we found the coin return rate varied from culture to culture depending on what the normal touch frequency was in a particular place. ", fontnumber2),


                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Overall, we found that women were four times more likely to touch another woman than was a man to touch another man. In many places, touching a stranger above or below the elbow did not produce the same positive results as with directly touching the elbow and often received negative reactions. Touching for more than three seconds also received a negative response, with the person suddenly looking down at your hand to see what you are doing.", fontnumber2),


                  SizedBox(height:25),
                  buildTextTitleVariation2("Touch their Hand Too", fontnumber2 ),

            SizedBox(height:5),
                  buildTextSubTitleVariation1("One study involved librarians who, as they issued a book to a borrower, lightly brushed the hand of the person borrowing the book. Outside the library, the borrowers were surveyed and asked questions about their impressions of the service the library offered. Those who had been touched responded more favourably to all questions asked and were more likely to recall the name of the librarian. Studies conducted in British super, markets where customers are lightly touched on the hand when they received their change show similar positive customer reactions. The same experiment has also been conducted in the USA with waitresses who derive much of their income from customer tips. The elbow-and-hand touching waitresses made 36% more tips from male diners than non-touching waitresses and male waiters increased their earnings by 22% regardless of which sex they touched.", fontnumber2),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("When you next meet someone new and you shake hands, extend your left arm, give a light touch on their elbow or hand as you shake, repeat their name to confirm you heard it correctly, and watch their reaction. Not only does it make that person feel important, it lets you remember their name through repetition.",fontnumber2 ),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Elbow-and hand-touching — when done discreetly - grabs attention, reinforces a comment, underlines a concept, increases your influence over others, makes you more memorable and creates positive impressions on everyone.",fontnumber2 ),






                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}

