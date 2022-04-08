
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
    name: "DAY 1: Secret of hands",
    widget: DetailsScreen(),
    numOfCourses: 7,
    image: "https://i.ibb.co/nDdr5wd/hand.png",
    ),

  Category(
    name: "DAY 2: Hidden Eye Signals",
    widget: eyeScreen(),
    numOfCourses: 7,
    image: "https://i.ibb.co/6NS8jh9/eye.png",
  ),

  Category(
    name: "DAY 3: Invisible Arm Indications",
    widget: armScreen(),
    numOfCourses: 10,
    image: "https://i.ibb.co/d5CY3zd/arm.png",
  ),

  Category(
    name: "DAY 4: Sneaky Smile Cues",
    widget: smileScreen(),
    numOfCourses: 7,
    image: "https://i.ibb.co/Lg9zn3D/smile.png",
  ),


  Category(
    name: "DAY 5: Know From Legs",
    widget: legScreen(),
    numOfCourses: 8,
    image: "https://i.ibb.co/M2hWMtR/leg.png",
  ),

  Category(
    name: "DAY 6: Cryptic Common Gestures",
    widget:  cmnScreen(),
    numOfCourses: 6,
    image: "https://i.ibb.co/P69z8B9/common.png",
  ),

  Category(
    name: "DAY 7: Disguised Deceit signals",
    widget:dctScreen(),
    numOfCourses: 6,
    image: "https://i.ibb.co/nL24Q1q/deceit.png",
  ),

  Category(
    name: "Bonus Body language tips",
    widget:dctScreen(),
    numOfCourses: 6,
    image: "https://i.ibb.co/yBv4cm3/extra.png",
  ),



];