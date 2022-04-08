import 'package:flutter/material.dart';

//LightTheme
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.white,
  textTheme: lightTextTheme,

   //inner card color on homepage
   cardColor: Colors.white.withOpacity(0.4),
  hintColor: Colors.white.withOpacity(0.2),

//details page background color
  dividerColor: Colors.white.withOpacity(0.7),

  backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,

  //tabbar color
  indicatorColor: Colors.purple.withOpacity(0.1)

 );

TextStyle lightTextStyle = TextStyle(

  color: Colors.black,
);
TextTheme lightTextTheme = TextTheme(
  bodyText1: lightTextStyle,
);

//////////////////////////////////////////////////////////////////////
//DarkTheme
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black,

  cardColor: Colors.black.withOpacity(0.3),
  hintColor: Colors.black.withOpacity(0.3),

//details page background color
  dividerColor: Colors.black.withOpacity(0.7),

    backgroundColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,

    //tabbar color
    indicatorColor: Colors.black,



);

TextStyle darkTextStyle = TextStyle(

  color: Colors.white,
);
TextTheme darkTextTheme = TextTheme(
  bodyText1: lightTextStyle,
);