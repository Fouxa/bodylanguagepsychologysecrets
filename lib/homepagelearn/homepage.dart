
 import 'package:bodylanguagepsychologysecrets/homepagelearn/model/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
 import 'package:cached_network_image/cached_network_image.dart';

import '../settings_page.dart';


 class HomeScreen extends StatefulWidget {

   const HomeScreen({Key? key}) : super(key: key);
   @override
   _HomeScreen createState() => _HomeScreen();
 }

 class _HomeScreen extends State<HomeScreen> {


   @override
   Widget build(BuildContext context) {

     var width = MediaQuery.of(context).size.width;
     var height = MediaQuery.of(context).size.height;

     return Scaffold(
     extendBodyBehindAppBar: true,

      body:


      NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(

              elevation: 0,
              backgroundColor:Colors.grey.withOpacity(0.1) ,
              centerTitle: true,


              title: Text("Learn", style: GoogleFonts.comicNeue(fontSize: 25,color: Theme.of(context).iconTheme.color,fontWeight: FontWeight.bold),),

              bottom: PreferredSize(
                child: Container(),
                preferredSize: Size(0.0, 10),
              ),

              pinned: false,
              floating: true,
              forceElevated: innerBoxIsScrolled,

            ),
          ];
        },
        body:



        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Expanded(
              child: StaggeredGridView.countBuilder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.only(top: 20,left: 20,right: 20),
                    crossAxisCount: 2,
                    itemCount: categories.length,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    itemBuilder: (context, index) {
                  return
                    InkWell(
                      onTap: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>   categories[index].widget),
                        );
                      }, // Handle your callback
                  child:

                        Container(

                          padding: EdgeInsets.all(7),
                          height:  height/3.8,
                          width: height/3.8,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.purple,
                                width: 3
                            ),
                            borderRadius: BorderRadius.circular(15),


                         ),



                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
//
                                    Container(
                                      height:  height/7.0,
                                      width: height/7.0,
                                      child:
                                      Hero(
                                        tag: categories[index],
                                        child:
                                      CachedNetworkImage(
                                        fit: BoxFit.cover,
                                        imageUrl: categories[index].image,
                                        placeholder: (context, url) =>
                                            SizedBox(

                                              child: BlurHash(hash: "L5H2EC=PM+yV0g-mq.wG9c010J}I"),
                                            ),
                                        errorWidget: (context, url, error) => Icon(Icons.error),
                                      ),
                                      ),
                                    ),



                                    Container(

                                      padding: EdgeInsets.all(5),


                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.purple.withOpacity(0.2),
                                              width: 2
                                          ),
                                            borderRadius: BorderRadius.circular(10.0),
                               //   color: Theme.of(context).hintColor,
                                          color: Colors.purple.withOpacity(0.1),


                                  //shape: BoxShape.circle,
                                ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            categories[index].name,
                                            style: GoogleFonts.comicNeue(fontSize: height/40,color: Theme.of(context).iconTheme.color,fontWeight: FontWeight.bold),
                                          ),
                                       /*   Text(
                                            '${categories[index].numOfCourses} Lessons',//66, 66, 66
                                            style: GoogleFonts.comicNeue(fontSize: 14,color: Theme.of(context).iconTheme.color,fontWeight: FontWeight.bold),
                                          )*/
                                        ],
                                      ),
                                    ),



                                  ],
                                ),
                              ),



                  );

                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ),

          ],
        ),



),


    );
  }
}
