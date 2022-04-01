import 'package:flutter/material.dart';
import 'package:bodylanguagepsychologysecrets/theme_provider/theme_provider.dart';
import 'package:bodylanguagepsychologysecrets/models/theme_notifier.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';



class settingsPage extends StatefulWidget {
  const settingsPage({Key? key}) : super(key: key);

  @override
  State<settingsPage> createState() => _settingsPage();
}
double fontnumber2 =18;


double newfontnumber =18;

class _settingsPage extends State<settingsPage> {


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
    savefontincrease()async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      newfontnumber+=2;
      print( "newfontnumber: "+ newfontnumber.toString());
      await prefs.setDouble("newfontnumber", newfontnumber);
    }
    savefontdecrease()async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      newfontnumber-=2;
      print( "newfontnumber: "+ newfontnumber.toString());
      await prefs.setDouble("newfontnumber", newfontnumber);
    }
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    ThemeProvider themeProvider =
    Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).iconTheme.color, //change your color here
        ),
        backgroundColor:Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        elevation: 0.3,
        title: Text(
          'Settings',style: TextStyle(color: Theme.of(context).iconTheme.color,),
        ),
      ),

      body:
      Stack(
          children:   <Widget>[

       /*     Positioned(
              bottom: 0,
              right:0,
              left: 0,
              child:
              Container(

                  child:
                  Image(
                    image: AssetImage("assets/images/settings_photo.png",),
                    fit: BoxFit.cover,
                  )
              ),

            ),*/


            ListView(children:[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Dark mode",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Spacer(),
                        Switch.adaptive(
                            value: themeProvider.getTheme == darkTheme,
                            activeColor: themeProvider.getTheme == darkTheme
                                ? Colors.white
                                : Colors.black,
                            onChanged: (d) {
                              themeProvider.changeTheme();
                            }),
                      ],
                    ),

                    Row(
                      children: [
                        Text("Font size of reading text",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Spacer(),

                        Row(children: [
                          IconButton(
                            icon: Icon(
                              Icons.add_circle_outline_rounded,

                              size: 35,
                            ),

                            onPressed: () {
                              if(newfontnumber>24){
                                print("no change in font");
                              }else{
                                savefontincrease();
                                setState(() { fontnumber2+=2; });
                                final snackBar = SnackBar(
                                  duration: Duration(milliseconds: 400),
                                  behavior: SnackBarBehavior.floating,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(
                                      color: Colors.yellow,
                                      width: 1,
                                    ),
                                  ),
                                  content: const Text('Font Increased',style: TextStyle(fontWeight: FontWeight.bold),),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              }
                              print("fontnumber2: "+ fontnumber2.toString());


                            },
                          ),

                          IconButton(
                            icon: Icon(
                              Icons.remove_circle_outline_outlined,
                              size: 35,
                            ),


                            onPressed: () {
                              if(newfontnumber<16){
                                print("no change in font");
                              }else{
                                savefontdecrease();
                                final snackBar = SnackBar(
                                  duration: Duration(milliseconds: 400),
                                  behavior: SnackBarBehavior.floating,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(
                                      color: Colors.yellow,
                                      width: 1,
                                    ),
                                  ),
                                  content: const Text('Font Decreased',style: TextStyle(fontWeight: FontWeight.bold),),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                setState(() { fontnumber2-=2; });
                              }

                              print("fontnumber2: "+ fontnumber2.toString());



                            },
                          ),
                        ],)
                      ],
                    ),

                    const Divider(
                      thickness: 0.1, // thickness of the line
                      // empty space to the trailing edge of the divider.
                      color: Colors.grey,
                      // The color to use when painting the line.
                      height: 25, // The divider's height extent.
                    ),
                    ExpansionTile(
                      backgroundColor: Colors.transparent,

                      title: Text(
                        "FAQ",
                        style: TextStyle(
                            fontSize: fontnumber2,
                            color: Theme.of(context).iconTheme.color,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      children: <Widget>[
                        ExpansionTile(
                          backgroundColor: Colors.transparent,

                          title: Text(
                            'Is this app free?',
                            style: TextStyle(
                              fontSize: fontnumber2,
                            ),
                          ),
                          children: <Widget>[
                            ListTile(

                              title: Text('You have free lifetime access to this app.',
                                style: TextStyle(
                                  fontSize: fontnumber2,
                                ),),
                            )
                          ],
                        ),
                        ExpansionTile(
                          backgroundColor: Colors.transparent,

                          title: Text(
                            'How to keep track of completed days?',
                            style: TextStyle(
                              fontSize: fontnumber2,
                            ),
                          ),
                          children: <Widget>[
                            ListTile(

                              title: Text('Once you have finished the day the shape of the day box will change from square to circle.',
                                style: TextStyle(
                                  fontSize: fontnumber2,
                                ),),
                            )
                          ],
                        ),
                        ExpansionTile(
                          backgroundColor: Colors.transparent,

                          title: Text(
                            'Is my personal data safe', style: TextStyle(
                            fontSize: fontnumber2,
                          ),
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text('Yes, we do not share data with any third part client or to show advertisements.',
                                style: TextStyle(
                                  fontSize: fontnumber2,
                                ),),
                            )
                          ],
                        ),
                      ],
                    ),

                    ExpansionTile(
                      backgroundColor: Colors.transparent,

                      title: Text(
                        "Help",
                        style: TextStyle(
                            fontSize: fontnumber2,
                            color: Theme.of(context).iconTheme.color,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      children: <Widget>[

                        ListTile(
                          title: Text(
                            'If you are experiencing any problem with app,send e-mail to: risephilosophyofficial@gmail.com. We will respond to your problem within 12hours. ',
                            style: TextStyle(
                              fontSize: fontnumber2,
                            ),
                          ),
                        )
                      ],
                    ),

                    ExpansionTile(
                      backgroundColor: Colors.transparent,

                      title: Text(
                        "About",
                        style: TextStyle(
                            fontSize: fontnumber2,
                            color: Theme.of(context).iconTheme.color,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      children: <Widget>[

                        ListTile(
                          title: Text(
                            'We are Rise Philosophy. Our mission is to spread good philosophical ideas using modern technology so that majority can benefit from it by implementing these ideas effectively in their life. Thank you for spending your time with us!',
                            style: TextStyle(
                              fontSize: fontnumber2,
                            ),
                          ),
                        )
                      ],
                    ),
                    ExpansionTile(
                      backgroundColor: Colors.transparent,

                      title: Text(
                        "Credits",
                        style: TextStyle(
                            fontSize: fontnumber2,
                            color: Theme.of(context).iconTheme.color,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      children: <Widget>[
                        Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('- Thank you all the philosophers for sharing your valuable ideas with the world.', style: TextStyle(fontSize: fontnumber2,),),
                            Text('Books', style: TextStyle(fontSize: fontnumber2,fontWeight: FontWeight.bold),),
                            Text("- 'Behave'- by Robert Sapolsky", style: TextStyle(fontSize: fontnumber2,),),
                            Text("- 'Critical Thinking' by Linda Elder and Richard Paul ", style: TextStyle(fontSize: fontnumber2,),),
                            Text("- 'Thinking Fast and Slow' by Daniel Kahneman ", style: TextStyle(fontSize: fontnumber2,),),
                            Text("- 'The Power of Now' by Echkart Tolle ", style: TextStyle(fontSize: fontnumber2,),),
                            Text("- 'The End of Faith' by Sam Harris ", style: TextStyle(fontSize: fontnumber2,),),
                            Text("- 'Daily Stoic' by Ryan Holiday ", style: TextStyle(fontSize: fontnumber2,),),
                            Text("- 'The Almanack of Naval Ravikant' by Eric Jorgenson", style: TextStyle(fontSize: fontnumber2,),),
                            Text("- 'The Tools of Titans' by Tim Ferriss ", style: TextStyle(fontSize: fontnumber2,),),

                            SizedBox(height: 15,)
                          ],)

                      ],
                    ),

                  ],
                ),
              ),
              const Divider(
                thickness: 0.1, // thickness of the line
                // empty space to the trailing edge of the divider.
                color: Colors.grey,
                // The color to use when painting the line.
                height: 25, // The divider's height extent.
              ),
            ]
            ),


          ]
      ),

    );
  }

  void showConfirmDialog(BuildContext context, String title, String action1title,
      String action2title, Function action1, Function action2,) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: const TextStyle(

                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      action1();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0, top: 12),
                      child: Text(
                        action1title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      action2();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 12),
                      child: Text(
                        action2title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

}