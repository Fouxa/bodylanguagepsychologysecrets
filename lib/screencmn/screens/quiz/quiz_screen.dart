import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bodylanguagepsychologysecrets/screencmn/controllers/question_controller.dart';

import 'components/body.dart';

class QuizScreencmn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      backgroundColor: Colors.white,

      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [



          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Colors.purpleAccent,
                  width: 3
              ),
              borderRadius: BorderRadius.circular(15),
            ),

            child: TextButton(
              onPressed: _controller.nextQuestion,
               // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                child: Text("Skip"
                  ,style: TextStyle(
                      color:  Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: height/40
                  ),
                )
            ),
          ),
        ],
      ),
      body: Body(),
    );
  }
}
