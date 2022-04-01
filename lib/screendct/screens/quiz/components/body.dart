import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bodylanguagepsychologysecrets/screendct/constants.dart';
import 'package:bodylanguagepsychologysecrets/screendct/controllers/question_controller.dart';


import 'progress_bar.dart';
import 'question_card.dart';

class Body extends StatelessWidget {
  const Body( )  ;

  @override
  Widget build(BuildContext context) {
    // So that we have acccess our controller
    QuestionController _questionController = Get.put(QuestionController());
    return
      Container(

        decoration: BoxDecoration(
          color: Colors.purpleAccent.withOpacity(0.2),


        ),


        child:
        Stack(
          children: [

            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: ProgressBar(),
                  ),


                  //*********************************changed thing




                  SizedBox(height: 10),

                  //*********************************changed thing
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Obx(
                          () => Text.rich(
                       TextSpan(
                      text:
                          "Question ${_questionController.questionNumber.value}",
                      style: TextStyle(fontSize: 20,color:   Colors.purple,),
                      children: [
                        TextSpan(
                          text: "/${_questionController.questions.length}",
                          style: TextStyle(fontSize: 20,color:   Colors.purple,),
                        ),
                      ],
                    ),
                      ),
                    ),
                  ),
                  //*********************************changed thing
                  SizedBox(height: 10),


                  //*********************************changed thing

                  Expanded(
                    child: PageView.builder(
                      // Block swipe to next qn
                      physics: NeverScrollableScrollPhysics(),
                      controller: _questionController.pageController,
                      onPageChanged: _questionController.updateTheQnNum,
                      itemCount: _questionController.questions.length,
                      itemBuilder: (context, index) => QuestionCard(
                          question: _questionController.questions[index]),
                    ),
                  ),


                ],
              ),
            )
          ],
        ),
      );




  }
}
