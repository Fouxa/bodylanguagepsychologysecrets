import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:bodylanguagepsychologysecrets/homepagelearn/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

Color title = Color.fromRGBO(255, 88, 100, 1);

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
          border: Border.all(color: Color.fromRGBO(255, 88, 100, 0.4), width: 4),

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
                fontSize: height/25,
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
                      fontSize: height/45,
                    ),
                  ),
                  TextSpan(
                    text: title,
                    style: TextStyle(
                      fontSize: height/45,
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
              height: width/10,
              width: width/10,
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