import 'package:bodylanguagepsychologysecrets/custom_widgets.dart';
import 'package:flutter/material.dart';
class resultscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:

           ListView(
             physics: BouncingScrollPhysics(),
              children: [

                SizedBox(height: 10,),

               resultcard("Secret of hands", 0.7, 70),
                resultcard("Eye Signals", 0.2, 20),
                resultcard("Smile and laughter", 0.4, 40),
                resultcard("Arm indication", 0.3, 30),
                resultcard("Know from legs", 0.3, 30),
                resultcard("Most common gestures", 0.5, 50),
                resultcard("Deceit Signals", 0.7, 70),

                SizedBox(height: 20,),


              ],

            )

    );
  }
}