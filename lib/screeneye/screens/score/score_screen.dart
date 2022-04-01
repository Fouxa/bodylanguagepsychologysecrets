import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:bodylanguagepsychologysecrets/screeneye/controllers/question_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      backgroundColor: Colors.white,


      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.red,
          ),
        ),

      ),







      body:
      Center(child:
      Container(

        decoration: BoxDecoration(
          color: Colors.purple.withOpacity(0.1),



          //    borderRadius: Border.fromBorderSide(side) ,
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
          border: Border.all(color: Colors.purple.withOpacity(0.5), width: 3),


          image: DecorationImage(image:  _qnController.numOfCorrectAns*10 <=30   ? AssetImage('assets/images/badscore.png')

              : _qnController.numOfCorrectAns*10 ==40  ? AssetImage('assets/images/avgscore.png')

              : _qnController.numOfCorrectAns*10 == 50  ? AssetImage('assets/images/avgscore.png')

              : _qnController.numOfCorrectAns*10 == 60  ? AssetImage('assets/images/aboveavgscore.png')

              : _qnController.numOfCorrectAns*10 == 70  ? AssetImage('assets/images/aboveavgscore.png')

              : _qnController.numOfCorrectAns*10 == 80  ? AssetImage('assets/images/aboveavgscore.png')
              : _qnController.numOfCorrectAns*10 == 90  ? AssetImage('assets/images/aboveavgscore.png')

              : _qnController.numOfCorrectAns*10 == 100  ? AssetImage('assets/images/aboveavgscore.png')

              : _qnController.numOfCorrectAns*10 == 110  ? AssetImage('assets/images/aboveavgscore.png')




              :  AssetImage('assets/images/goodscore.png'),




//   ? Colors.white : Colors.purple,
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
          ),





          //  color: Colors

        ),














        child:
        Column(
          children: [
            SizedBox(height: 100,),

            Text(
              "Your Score",
              style: GoogleFonts.comicNeue(fontSize: 55,color: Colors.purple.withOpacity(0.8),fontWeight: FontWeight.bold),              ),

            Text(
              "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
              style: GoogleFonts.comicNeue(fontSize: 55,color: Colors.purple,fontWeight: FontWeight.bold),
            ),



//                  _qnController.numOfCorrectAns*10 <=50   ? AssetImage('assets/images/leg.png'), : AssetImage('assets/images/hand.png'),



            SizedBox(height: 280,),


            Center(

              child:
              Container(

                  decoration: BoxDecoration(




                    //    borderRadius: Border.fromBorderSide(side) ,
                    borderRadius: BorderRadius.all(
                      Radius.circular(55),
                    ),



                    //  color: Colors

                  ),

                  height: 250.0,
                  width: 300.0,


                  child:
                  Text("")

              ),
            ),



/*

SizedBox(height: 180,),
              Positioned.fill(
                child: Image.asset(
                  "assets/images/leg.png",
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),


*/










          ],
        ),
      ),
        ///////////////////////////////
      ),


      /*


          Center(
            child:
            Container(

                decoration: BoxDecoration(




                  //    borderRadius: Border.fromBorderSide(side) ,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  border: Border.all(color: Colors.purple.withOpacity(0.5), width: 4),

                  image: DecorationImage(image: AssetImage('assets/images/leg.png'),
//   ? Colors.white : Colors.purple,
                    fit: BoxFit.cover,

                  ),

                  //  color: Colors

                ),

                height: 250.0,
                width: 300.0,


                child:
                Text("")

            ),
          ),

*/






    );
  }
}
