import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class fivehand extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double fontnumber2 =18;
class _MyHomePageState extends State<fivehand> {
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
                  buildTextTitleVariation2('When Men and Women Shake Hands',fontnumber2  ),
                  buildTextSubTitleVariation1("Even though women have had a strong presence in the workforce for several decades, many men and women still experience degrees of fumbling and embarrassment in male/female greetings. Most men report that they received some basic handshaking training from their fathers when they were boys, but few women report the same training. As adults, this can create uncomfortable situations when a man reaches first to shake a woman's hand but she may not see it — she's initially more intent on looking at his face. Feeling awkward with his hand suspended in mid-air, the man pulls it back hoping she didn't notice but as he does, she reaches for it and is also left with her hand dangling in a void. He reaches for her hand again and the result is a mish-mash of tangled fingers that look and feel like two eager squid in a love embrace.", fontnumber2 ),

                  SizedBox(height:15),
                  buildTextSubTitleVariation1("Initial meetings between men and women can be thrown off by poor handshake technique.",fontnumber2  ),
                  SizedBox(height:15),
                  buildTextSubTitleVariation1("If this ever happens to you, intentionally take the other person's right hand with your left, place it correctly into your right hand and say with a smile 'Let's try that again!' This can give you an enormous credibility boost with the other person, because it shows you care enough about meeting them to get the handshake right. If you are a woman in business, a wise strategy is to give notice to others that you intend to shake hands so as to not catch them off guard. Hold your hand out as early as possible to give clear notice of your intention to shake hands and this will avoid any fumbling.",fontnumber2  ),




                  SizedBox(height:15),

                  OnlineImage2('https://i.ibb.co/bX7Fkdd/hand52.jpg'),


                  SizedBox(height:15),
                  buildTextTitleVariation2('The Double-Hander', fontnumber2 ),
                  buildTextSubTitleVariation1("A corporate favourite the world over, this is delivered with direct eye-contact, a candidly reassuring smile and a confident loud repetition of the receiver's first name, often accompanied by an earnest inquiry about the receiver's current state of health. This handshake increases the amount of physical contact given by the initiator and gives control over the receiver by restricting his right hand. Sometimes called the 'politician's handshake', the initiator of the Double-Hander tries to give the impression he is trustworthy and honest, but when it's used on a person he's just met, it can have the reverse effect leaving the receiver feeling suspicious about the initiator's intentions. The Double-Hander is like a miniature hug and is acceptable only in circumstances where a hug could also be acceptable. Ninety per cent of humans are born with the ability to throw the right arm in front of the body - known as an over-arm blow - for basic self-defence. The Double-Hander restricts this defence capability, which is why it should never be used in greetings where a personal bond doesn't exist with the other person. It should be used only where an emotional bond already exists, such as when meeting an old friend. In these circumstances, self-defence is not an issue so the handshake is perceived as genuine.",fontnumber2  ),



                ],
              ),
            ),

          ],
        ),
      ),

    );
  }






}
