import 'package:flutter/material.dart';

import '../logic/bloc.dart';

//This is SearchBar.
class SearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return

      Container(
        padding: EdgeInsets.all(10),
      height: 70,
      alignment: Alignment.center,

      child:
      Material(child:
      TextField(
        
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey,
          border: InputBorder.none,
          prefixIcon:  Icon(Icons.search_outlined,size: 30,),
          hintText: 'Search Articlesgg ',
          hintStyle: TextStyle(
            color: Colors.red,
            fontStyle: FontStyle.italic,
          ),
        ),
        onChanged: (value) {
          bloc.feedSearchVal(value);
        },
      ),),
      decoration: BoxDecoration(
      //  color: Color(0xffefefef),

        borderRadius: BorderRadius.circular(15),
      ),
    );


  }
}
