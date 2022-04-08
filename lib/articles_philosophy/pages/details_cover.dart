import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DetailsCover extends StatelessWidget {
  //Variables to recieve datas from MainCard (as per index)
  final String imagePath;
  final String title;
  final String articleDate;


  //Recieving Datas
  DetailsCover({
    required this.imagePath,
    required this.title,
    required this.articleDate,

  });

  final FirebaseFirestore locationsFSI = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: title + 'MainCard',
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 35),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          image: DecorationImage(
            image: NetworkImage(imagePath),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2),
              BlendMode.multiply,
            ),
          ),
        ),
        child:
        Stack(
          children: <Widget>[

            Column(
              children: <Widget>[
                SizedBox(height: 40),
                Container(

                  child: Material(
                    color: Colors.transparent,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_sharp,color: Colors.yellow,),
                      iconSize: 30,
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ],
            ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Material(
              //Venue Name
              color: Colors.transparent,
              child: Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            SizedBox(height: 5),
            Material(
              //Venue Location + some other details.
              color: Colors.transparent,
              child: Text(
                articleDate,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: (MediaQuery.of(context).size.height / 3)),
          ],
        ),

        ]),


      ),
    );
  }
}
