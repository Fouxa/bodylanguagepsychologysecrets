import 'package:flutter/material.dart';

import 'main_card.dart';

//List of Main Cards to be displayed on Explore Page.
Widget exploreList(datas) {

  return

    ListView.builder(
    physics: BouncingScrollPhysics(),
    scrollDirection: Axis.vertical,
    itemCount: datas.length,
    itemBuilder: (BuildContext context, int index) {
      return Column(
        children: <Widget>[

           MainCard(
            imagePath: datas[index]['imagePath'],
            title: datas[index]['title'],
            articleDate: datas[index]['articleDate'],
            description: datas[index]['description'],

          ),



        ],
      );
    },
  );



}

//Info to be displayed on Explore Page when no Search result found.
Widget noSearch() {
  return Center(
    child: Text('No result'),
  );
}
