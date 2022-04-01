import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class seveneye extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<seveneye> {
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
                  buildTextTitleVariation2("The Geography of the Face", fontnumber2 ),
                  buildTextSubTitleVariation1("The geographical area of a person's face and body that you gaze upon can also dramatically affect the outcome of a faceto-face encounter. When you've finished reading this next section, try out the techniques we discuss as soon as possible — without warning anyone — and you'll experience the powerful effect these skills can have. It takes about a week of practice for these eye techniques to become a normal part of your communication skills.", fontnumber2),
                  SizedBox(height:15),
                  buildTextSubTitleVariation1("There are three basic types of gazing: Social Gazing, Intimate Gazing and Power Gazing", fontnumber2),



                  SizedBox(height:25),
                  buildTextTitleVariation2("1.The Social Gaze", fontnumber2 ),
                  SizedBox(height:15),
                  OnlineImage2('https://i.ibb.co/BKsXdVs/eye71.jpg'),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Experiments into gazing reveal that during social encounters the gazer's eyes look in a triangular area on the other person's face between the eyes and the mouth for about 90% of the gaze time. This is the area of the face we look at in a non-threatening environment. The other Person will perceive you as non-aggressive.", fontnumber2),




                  SizedBox(height:25),
                  buildTextTitleVariation2("2.The Intimate Gaze", fontnumber2 ),
                  SizedBox(height:15),
                  OnlineImage2('https://i.ibb.co/QJjQWsw/eye72.jpg'),



                  buildTextSubTitleVariation1("When people approach each other from a distance, they look quickly between the other person's face and lower body to first establish what the sex of the person is and then a second time to determine a level of interest in them. This gaze is across the eyes and below the chin to lower parts of the person's body. In close encounters, it's the triangular area between the eyes and the chest and for distant gazing it's from the eyes to the groin or below.", fontnumber2),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Men and women use this gaze to show interest in each other and those who are interested will return the gaze. We usually give two quick glances and then look at their face and, despite most people's strong denials about it, hidden camera studies reveal that everyone does it, including nuns. As we said earlier, a woman's wider-ranging peripheral vision, however, allows her to check out a man's body from head to toe without getting caught. Male tunnel vision is why a man will move his gaze up and down a woman's body in a very obvious way. This is also the reason why men are constantly accused of ogling women's bodies at close range but women are rarely accused of the same, even though research shows that women do more of it than men. It's not that men are bigger oglers than women - men's tunnel vision means they keep getting caught.",fontnumber2 ),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Looking down towards the ground during conversation serves different purposes for men and women. For a man, it lets him give a woman the once over. For a woman, it has the dual purpose of letting her check him out and at the same time send a submissive signal of looking away and down.",fontnumber2 ),

                  SizedBox(height:25),
                  buildTextTitleVariation2("3.The Power Gaze", fontnumber2 ),

                  SizedBox(height:15),
                  OnlineImage2('https://i.ibb.co/syg45mL/eye73.jpg'),




                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Imagine the person has a third eye in the centre of their forehead and look in a triangular area between the person's 'three' eyes. The impact this gaze has on the other person has to be experienced to be believed. Not only does it change the atmosphere to very serious, it can stop a bore dead in their tracks. By keeping your gaze directed at this area, you keep the screws firmly on them. Provided your gaze doesn't drop below the level of their eyes, the pressure will stay on them. Never use this in friendly or romantic encounters. But it works a treat on the person who you want to intimidate or on the person who simply won't shut up.", fontnumber2),





                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
