

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:bodylanguagepsychologysecrets/homepagelearn/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'homepagelearn/model/category.dart';

Color title = Color.fromRGBO(255, 88, 100, 1);



DetailsImage(String detailsImageLink, double height, double width, Color backgroundColor , int index){
  return
    Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height:  height,
                width: height,
                padding: EdgeInsets.all(5),

                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                      width: 3
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 20,
                      spreadRadius: 15,
                      offset: const Offset(6, 15),
                    ),
                  ],

                  //     borderRadius: BorderRadius.circular(100.0),
                  //   color: Theme.of(context).hintColor,
                  color: backgroundColor,
                  shape: BoxShape.circle,
                ),
                child:

                    Hero(
                      tag: categories[index],
                      child:
                CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: detailsImageLink,
                  placeholder: (context, url) =>
                      SizedBox(
                        child: BlurHash(hash: "L5H2EC=PM+yV0g-mq.wG9c010J}I"),
                      ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),

      ),
              ),
            ],
          ),
        ],
      ),
    );
}



OnlineImage2(String ImageLink,  ){
  return Center(

      child:
      Container(
        height: 250.0,
        width: 300.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          border: Border.all(color: Colors.purple.withOpacity(0.3), width: 4),

        ),
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: ImageLink,
          placeholder: (context, url) =>
              SizedBox(

                child: BlurHash(hash: "L5H2EC=PM+yV0g-mq.wG9c010J}I"),
              ),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      )

  );
}


OnlineImage(String ImageLink,  ){
  return Container(
     /*decoration: new BoxDecoration(

   ),*/
      //flutter run --no-sound-null-safety
    child:
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: ImageLink,
            placeholder: (context, url) =>
                SizedBox(

                  child: BlurHash(hash: "L5H2EC=PM+yV0g-mq.wG9c010J}I"),
                ),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        )

  );
}


class CourseContent extends StatelessWidget {
  final String number;
  final int duration;
  final String title;
  final bool isDone;
  final Widget widget;

  const CourseContent({

    required this.number,
    required this.duration,
    required this.title,
    this.isDone = false,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child:

      InkWell(
        onTap: () {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>   widget),
          );
        }, // Handle your callback
        child:

        Row(
          children: <Widget>[
            Text(
              number,
              style: kHeadingextStyle.copyWith(
                color: Colors.purple,
                fontSize: height/30,
              ),
            ),
            SizedBox(width: 20),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "$duration mins read\n",
                    style: TextStyle(
                      color: Theme.of(context).iconTheme.color,
                      fontSize: height/47,
                    ),
                  ),
                  TextSpan(
                    text: title,
                    style: TextStyle(
                      fontSize: height/47,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    )
                  ),
                ],
              ),
            ),
            Spacer(),

            Container(
              margin: EdgeInsets.only(left: 20),
              height: width/12,
              width: width/12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.purple,
              ),
              child: Icon(Icons.arrow_forward_ios, color: Colors.white),
            )



          ],
        ),

      ),
    );
  }
}

buildTextTitleVariation2(String text,double fontsizenumber   ){
  return Padding(
    padding: EdgeInsets.only(bottom: 16),
    child: Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(

        fontSize: fontsizenumber,
        fontWeight: FontWeight.bold,
      //  color:   ? Colors.white :  Colors.purple,
      ),
    ),
  );
}

buildTextSubTitleVariation1(String text,double fontsizenumber  ){
  return Padding(
    padding: EdgeInsets.only(bottom: 8),
    child: Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontSize: fontsizenumber,
        height: 1.5,
        //  fontWeight: FontWeight.bold,
      //  color:   ? Colors.white : Colors.black,
      ),
    ),
  );
}

resultcard (String name, double percent, int percenttext){
  return Container(
    margin: EdgeInsets.only(left: 20,right: 20,top: 20),
    padding: EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(17), // if you need this
      border: Border.all(
        width: 3,
        color: Color.fromRGBO(255, 88, 100, 0.5),
      ),
    ),

    child:
    Row(
        children:[
          Text( name, style: TextStyle(color: Colors.purple,fontSize: 22,fontWeight: FontWeight.bold ),),
          Spacer(),
          CircularPercentIndicator(
              radius: 75.0,
              lineWidth: 10.0,
              animation: true,
              percent: percent,
              center: new Text(
                percenttext.toString() + '%',
                style:
                new TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: Colors.grey.withOpacity(0.3),
              animationDuration: 2000,
              linearGradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(253, 41, 123, 1),
                     Colors.purple,
                     Colors.purple,
                  ])
          ),
        ]//l
    ),
  );

      }