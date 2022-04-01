
import 'package:bodylanguagepsychologysecrets/coursedetails/armgestures/homearm.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/commongetures/homecmn.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/deceitgestures/homedct.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/eyegestures/homeeye.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/handgestures/homehand.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/leggestures/homeleg.dart';
import 'package:bodylanguagepsychologysecrets/coursedetails/smilegestures/homesmile.dart';
import 'package:flutter/material.dart';

/*
class Category {
  final String name;
  final int numOfCourses;
  final String image;
  final Widget widget;

  Category(this.name, this.numOfCourses, this.image,this.widget);
}

List<Category> categories = categoriesData
    .map((item) => Category(item['name'], item['courses'], item['image'],item['widget']))
    .toList();

var categoriesData = [
  {'name': 'Secret of hands', 'courses': 7, 'image': "assets/images/hand.png",'widget': DetailsScreen(),},////////////////////////////////////////
  {"name": "Smile and laughter", 'courses': 7, 'image': "assets/images/smile.png",'widget': smileScreen(),},
  {
    "name": "Eye signals",
    'courses': 10,
    'image': "assets/images/eye.png",'widget': eyeScreen(),
  },

  {"name": "Arm indication", 'courses': 7, 'image': "assets/images/arm.png", 'widget': armScreen(), },
  {"name": "Know from legs", 'courses': 8, 'image': "assets/images/leg.png", 'widget': legScreen(),},
  {"name": "Most common gestures", 'courses': 6, 'image': "assets/images/mostcommon.png", 'widget': cmnScreen(),},
  {"name": "Deceit          Signals", 'courses': 6, 'image': "assets/images/deceit.png", 'widget': dctScreen(),},
];
*/

class Category {

  final String name;
  final int numOfCourses;
  final String image;
  final Widget widget;

  Category({
    required this.name,
    required this.numOfCourses,
    required this.image,
    required this.widget
  });
}


List<Category> categories = [

  Category(
    name: "Day 1: Secret of hands",
    widget: DetailsScreen(),
    numOfCourses: 7,
    image: "https://i.ibb.co/4FrgXjW/hand-compressed.png",
    ),

  Category(
    name: "Day 2: Eye signals",
    widget: eyeScreen(),
    numOfCourses: 7,
    image: "https://i.ibb.co/1Mp2SwY/eye-compressed.png",
  ),

  Category(
    name: "Day 3: Arm indications",
    widget: armScreen(),
    numOfCourses: 10,
    image: "https://i.ibb.co/Vg7bCKW/arm.png",
  ),

  Category(
    name: "Day 4: Smile and laughter",
    widget: smileScreen(),
    numOfCourses: 7,
    image: "https://i.ibb.co/NTNzhBQ/smile-compressed.png",
  ),


  Category(
    name: "Day 5: Know from legs",
    widget: legScreen(),
    numOfCourses: 8,
    image: "https://i.ibb.co/D7bFQTr/leg-compressedexp.png",
  ),

  Category(
    name: "Day 6: Common gestures",
    widget:  cmnScreen(),
    numOfCourses: 6,
    image: "https://i.ibb.co/Y3qtHYr/pexels-photo-1036627.png",
  ),

  Category(
    name: "Day 7: Deceit          Signals",
    widget:dctScreen(),
    numOfCourses: 6,
    image: "https://i.ibb.co/W6TCPvv/pexels-photo-3124851-1.png",
  ),



];