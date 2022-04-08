import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../pages/details_page.dart';

//This are the stars of the App, the main Widgets displaying covers of Locations.
class MainCard extends StatefulWidget {
  //Variables for datas recieved from json.
  final String imagePath;
  final String title;
  final String articleDate;
  final String description;


  //Importing datas from json via explore_page.dart
  MainCard({
    required this.imagePath,
    required this.title,
    required this.articleDate,
    required this.description,

  });

  @override
  _MainCardState createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  final FirebaseFirestore locationsFSI = FirebaseFirestore.instance;

  int numberStories = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return


      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => DetailsPage(
                imagePath: widget.imagePath,
                title: widget.title,
                articleDate: widget.articleDate,
                description: widget.description,
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color:  Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: [BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 15,
          offset: Offset(0, 5),
        )],
          ),
          margin: EdgeInsets.all(20),
         // padding: EdgeInsets.all(12),
          width: width/1.1,
          height: height/1.3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Expanded(
                child: Hero(
                    tag: widget.title + 'MainCard',
                  child: Container(
                    height: height/3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(widget.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 8,
              ),
            Container(
              margin: EdgeInsets.all(10),
            child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children:[

                    Material(
                      //Venue Name
                      color: Colors.transparent,
                      child: Text(
                        widget.title,
                        textAlign: TextAlign.left,
                        maxLines: 3,
                        style: TextStyle(
                          color: Theme.of(context).iconTheme.color,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),

              StreamBuilder(
                stream: locationsFSI
                    .collection('locations')
                    .snapshots(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) {
                    return Material(
                      //Venue Location + some other details (When no data in snapshot).
                      color: Colors.transparent,
                      child: Text(
                        widget.articleDate,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                       //   color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    );
                  } else {
                    numberStories = snapshot.data.docs.length;
                    return Material(
                      //Venue Location + some other details.
                      color: Colors.transparent,
                      child: Text(
                        widget.articleDate,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                           fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                       //   color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    );
                  }
                },
              ),

                      StreamBuilder(
                        stream: locationsFSI
                            .collection('locations')
                            .snapshots(),
                        builder: (BuildContext context, AsyncSnapshot snapshot) {
                          if (!snapshot.hasData) {
                            return Center(child: CircularProgressIndicator());
                          } else {
                            return  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        //Description of the venue, fetched from json.
                                        widget.description,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 5,
                                        textAlign: TextAlign.left,

                                        style: TextStyle(


                                          fontSize: 20,
                                          height: 1.4,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),



                                    ],
                                  );
                                }


                          }

                      ),


              ]
            ),
      ),

            ],
          ),
        ),
      );







/*

      GestureDetector(
      onTap: () {
        // Creates Details Page for respective Data.
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => DetailsPage(
              imagePath: widget.imagePath,
              title: widget.title,
              articleDate: widget.articleDate,
              description: widget.description,


            ),
          ),
        );
      },
      child: Hero(
        tag: widget.title + 'MainCard',
        child: Container(
          width: MediaQuery.of(context).size.width - 60,
          padding: EdgeInsets.symmetric(horizontal: 35),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
            image: DecorationImage(
              image: NetworkImage(widget.imagePath),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.yellow.withOpacity(0.9),
                BlendMode.multiply,
              ),
            ),
          ),
          child: Column(


            children: <Widget>[




              SizedBox(height: 15),
              Material(
                //Venue Name
                color: Colors.transparent,
                child: Text(
                  widget.title,
                  textAlign: TextAlign.left,
                  maxLines: 3,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(height: 15),
              StreamBuilder(
                stream: locationsFSI
                    .collection('locations')
                    .snapshots(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) {
                    return Material(
                      //Venue Location + some other details (When no data in snapshot).
                      color: Colors.transparent,
                      child: Text(
                        widget.articleDate,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    );
                  } else {
                    numberStories = snapshot.data.docs.length;
                    return Material(
                      //Venue Location + some other details.
                      color: Colors.transparent,
                      child: Text(
                        widget.articleDate,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    );
                  }
                },
              ),

            ],
          ),
        ),
      ),



    );
*/



  }
}



