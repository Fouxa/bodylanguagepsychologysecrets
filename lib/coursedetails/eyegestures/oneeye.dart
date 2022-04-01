import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class oneeye extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<oneeye> {
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
                  OnlineImage2('https://i.ibb.co/zPvckDK/eye11.jpg'),


                  SizedBox(height:25),
                  buildTextTitleVariation2('The Dilating Pupils', fontnumber2 ),
                  buildTextSubTitleVariation1("In given light conditions, your pupils will dilate or contract as your attitude and mood change from positive to negative and vice versa. When someone becomes excited, their pupils can dilate to up to four times their original size. Conversely, an angry, negative mood causes the pupils to contract to what are commonly known as 'beady little eyes' or 'snake eyes'. Lighter eyes can look more attractive because it's easier to see the dilation taking place.",fontnumber2 ),
                  SizedBox(height:15),
                  buildTextSubTitleVariation1("The eyes are a key signal in courtship and the purpose of eye make-up is to emphasise eye display. If a woman is attracted to a man, she will dilate her pupils at him and he is likely to decode this signal correctly without knowing it. This is why romantic encounters are most successful in dimly lit places because everyone's pupils dilate and create the impression that couples are interested in each other. When lovers gaze deep into each other's eyes, they are unknowingly looking for pupil-dilation signals and each becomes excited by the dilation of the other's pupils. Research has shown that when pornographic films are shown to men their pupils can dilate to almost three times their size. Most women's pupils gave the greatest dilation when looking at pictures of mothers and babies. Young babies and children have larger pupils than adults, and babies' pupils constantly dilate when adults are present in an attempt to look as appealing as possible and therefore receive constant attention. This is why the bestselling children's toys almost always have oversized pupils. Research also shows that pupil dilation has a reciprocal effect on the person who sees the dilated pupils. Men looking at pictures of women with dilated pupils showed greater pupil dilation than when they looked at pictures of women with constricted pupils. ",fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Women Are Better at It, as Usual', fontnumber2 ),
                  buildTextSubTitleVariation1("Dr Simon Baron-Cohen at Cambridge University conducted some tests where subjects were shown photographs in which only a narrow strip of the face across both eyes was visible. The subjects were asked to choose between mental states expressed in the photographs such as 'friendly', 'relaxed', 'hostile' and 'worried' and attitudes such as 'desire for you' and 'desire for someone else'. Statistically, pure guesswork would result in half the answers being correct but men's average score was 19 out of 25 while women scored 22 out of 25. This test shows that both sexes have a greater ability to decode eye signals than body signals and that women are better at it than men. Scientists don't yet know how this eye information is sent or decoded, they simply know that we can do it. Autistic people - who are nearly all males - scored the lowest. Autistic brains lack the ability to read people's body language and this is one reason why autistic people have difficulty in forming social relationships, even though many have very high IQs.",fontnumber2 ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Giving Them the Eye', fontnumber2 ),
                  buildTextSubTitleVariation1("Humans are the only primates that have whites of the eye, known as the sclera — apes' eyes are completely dark. The white of the eye evolved as a communication aid to allow humans to see where other people were looking, because direction is linked to emotional states. Women's brains have more hardwiring than men's to read emotions, and one consequence of this is that women have more white of the eye than men. Apes lack eye-whites, which means that their prey don't know where the ape is looking or whether they have been spotted, giving the ape a greater chance of hunting success. Humans are the only primates with pronounced whites of the eye.", fontnumber2),




                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
