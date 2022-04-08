import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Headings of Tabs.
Widget pageHeader(String heading, double hZPadding) {
  return Container(



    //Page Heading
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.symmetric(horizontal: hZPadding),
    // height: 50,
    child: Text(




      heading,
      textAlign: TextAlign.left,
      style: GoogleFonts.comicNeue(fontSize: 30,color: Colors.purple,fontWeight: FontWeight.bold),
    ),
  );
}
