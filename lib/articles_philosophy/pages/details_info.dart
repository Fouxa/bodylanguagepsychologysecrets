import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:shared_preferences/shared_preferences.dart';

class DetailsInfo extends StatelessWidget {
  final String description;


  DetailsInfo({
    required this.description,

  });

  final FirebaseFirestore locationsFSI = FirebaseFirestore.instance;


  //This Page shows Stiories of a specific Location from FireStore.
  @override
  Widget build(BuildContext context) {


    return Column(
      children: <Widget>[

        Container(
          padding: EdgeInsets.only(left: 15,right: 15,),
          height: MediaQuery.of(context).size.height ,

          child: StreamBuilder(
            stream: locationsFSI
                .collection('locations')
                .snapshots(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              } else {
                return ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(0),
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 50,),
                          Text(
                            //Description of the venue, fetched from json.
                            description,

                            textAlign: TextAlign.justify,

                            style: TextStyle(

                              fontSize: 20,
                              height: 1.4,
                              fontStyle: FontStyle.normal,
                            ),
                          ),

SizedBox(height: 15,)

                        ],
                      );
                    }else{

                      return Text(" ");
                    }

                  },
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
