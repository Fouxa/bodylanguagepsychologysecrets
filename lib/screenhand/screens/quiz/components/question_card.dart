import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bodylanguagepsychologysecrets/screenhand/controllers/question_controller.dart';
import 'package:bodylanguagepsychologysecrets/screenhand/models/Questions.dart';

import '../../../constants.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({

    // it means we have to pass this
    required this.question,
  })  ;

  final Question question;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(

        color:  Theme.of(context).backgroundColor,

        borderRadius: BorderRadius.only(topRight:  Radius.circular(20),topLeft:  Radius.circular(20)),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color:  Theme.of(context).iconTheme.color,),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.options.length,
            (index) => Option(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
