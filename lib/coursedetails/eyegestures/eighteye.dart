import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class eighteye extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<eighteye> {
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
                  OnlineImage2('https://i.ibb.co/0YNv2jN/eye81.jpg'),



                  SizedBox(height:25),
                  buildTextTitleVariation2("First 20 Seconds", fontnumber2 ),
                  buildTextSubTitleVariation1("Many people are taught that, in a sales or job interview, you should maintain strong eye contact with the other person and keep it up until you are seated. This creates problems for both the interviewer and interviewee because it's contrary to the process we like to go through when we meet someone new. A man wants to check out a woman's hair, legs, body shape and overall presentation. If she maintains eye contact it restricts this process so he's left trying to steal glances at her during the interview without getting caught and so he becomes distracted from the actual job of interviewing. Some women are disappointed that, in a supposedly equal business world, men still do this, but hidden cameras show this to be a fact of business life whether we like it or not.", fontnumber2),
                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Like it or not, everyone steals a look at a woman's rear when she leaves a room, even if they don't like her front view.", fontnumber2),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("Video cameras also reveal that women interviewers go through the same evaluation process with both male and female interviewees but women's wider peripheral vision means they rarely get caught. Women are also more critical than men of female interviewees whose appearance doesn't stack up. Women look at a male candidate's hair length, clothes design and co-ordination, the creases in his trousers and shine on his shoes. Most men are completely unaware that women look at the condition of the back of his shoes as he walks out.",fontnumber2 ),

                  SizedBox(height:25),
                  buildTextTitleVariation2("Solution", fontnumber2 ),
                  buildTextSubTitleVariation1("When you go for an interview, shake hands and then give the interviewer a two- to three-second frame of uninterrupted time for them to complete the process of looking you over. Look down to open your briefcase or folder, or to arrange any papers you might need, turn to hang up your coat, or move your chair in closer, and then look up", fontnumber2),

                  SizedBox(height:25),
                  buildTextTitleVariation2("Look Deep Into My Eyes, Baby", fontnumber2 ),
                  buildTextSubTitleVariation1("Researchers conducted a experiment in which selected number of men were told that their next date was well matched to them and that they should expect to have a successful, fun time. We explained to each man that his date had suffered an injury to one eye as a child and that she was very sensitive about it because the eye didn't track properly. We said we weren't sure which eye it was, but if he looked closely he'd be able to pick it. Each woman was also told the same story about her date and that if she too looked closely she'd be able to spot the slow eye. On their dates, the couples spent the evening gazing into each other's eyes searching in vain for the 'problem eye'. The outcome was that each couple reported high levels of intimacy and romance on their dates and the likelihood of the couple meeting again for a second date was 200% higher than the agency average.",fontnumber2 ),

                  SizedBox(height:15),

                  buildTextSubTitleVariation1("You can also drive couples apart by telling them that their date has a hearing problem and that they'd need to talk about 10% louder than their date to be heard. This results in a couple talking louder and louder as the evening progresses to the point where they are yelling at each other.", fontnumber2),



                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
