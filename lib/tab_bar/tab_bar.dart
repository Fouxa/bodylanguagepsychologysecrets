import 'package:bodylanguagepsychologysecrets/homepagelearn/homepage.dart';
import 'package:bodylanguagepsychologysecrets/result/result.dart';
import 'package:bodylanguagepsychologysecrets/settings_page.dart';
import 'package:bodylanguagepsychologysecrets/test_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class tabbar extends StatefulWidget {


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<tabbar> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: DefaultTabController(
        length: 3,
        child: Scaffold(
         // backgroundColor: Theme.of(context).backgroundColor,
          appBar: AppBar(

            backgroundColor: Theme.of(context).backgroundColor,
            centerTitle: true,
            title: Text("Body Language Expert", style: GoogleFonts.comicNeue(fontSize: 25,color: Theme.of(context).iconTheme.color,fontWeight: FontWeight.bold),),
            actions: <Widget>[

              IconButton(
                icon: Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.purple,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => settingsPage()
                    ),
                  );
                },),



            ],
                   bottom:
                        TabBar(
                          indicatorColor: Colors.purple,
                          indicatorWeight: 5.0,
                          tabs: [
                            Tab(icon: Text("Learn",style: TextStyle(fontSize: 20,color:  Colors.purple,fontWeight: FontWeight.bold),)),
                            Tab(icon:  Text("Test",style: TextStyle(fontSize: 20,color:  Colors.purple,fontWeight: FontWeight.bold),)),
                            Tab(icon:  Text("Result",style: TextStyle(fontSize: 20,color:  Colors.purple,fontWeight: FontWeight.bold),)),

                          ],
                        ),



                          //  title: Text('QR Code',style: TextStyle(fontSize: 20, color: Color.fromRGBO(255, 0, 0, 1),),),
                        ),



          body: TabBarView(
            children: [
              HomeScreen(),
              testScreen(),
              resultscreen()
            ],
          ),
        ),
    ),
    );

  }




}
