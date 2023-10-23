import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    // currentQuestionIndex = currentQuestionIndex + 1;
    // currentQuestionIndex += 1;
    setState(() {
      currentQuestionIndex++; // increments the value by 1
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:quiz_app/answer_button.dart';
// import 'package:quiz_app/data/questions.dart';
// import 'package:google_fonts/google_fonts.dart';
// //import 'package:quiz_app/quiz.dart';

// class QuestionScreen extends StatefulWidget {
//   const QuestionScreen({super.key, required this.onSelectAnswer});

//   final void Function(String answer) onSelectAnswer;

//   @override
//   State<QuestionScreen> createState() {
//     return _QuestionScreen( );
//   }
// }

// class _QuestionScreen extends State<QuestionScreen> {
//   var currentQuestionIndex = 0;

//   void onSelectAnswer(String selectedAnswer) {
//     widget.onSelectAnswer(selectedAnswer);
//     setState(() {
//       currentQuestionIndex++;
//     });
//   }

//   @override
//   Widget build(context) {
//     final currentQuestion = questions[currentQuestionIndex];

//     return SizedBox(
//       width: double.infinity,
//       child: Container(
//         margin: const EdgeInsets.all(
//           40,
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               currentQuestion.text,
//               style: GoogleFonts.kanit(
//                 color: const Color.fromARGB(255, 120, 224, 232),
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 30),
//             // AnswerButton('answer.... 1', () {}),
//             // AnswerButton('answer.... 2', () {}),
//             // AnswerButton('answer.... 3', () {}),
//             ...currentQuestion.getShuffledAnswer().map(
//               (answer) {
//                 return AnswerButton(
//                   answer,
//                   onSelectAnswer(answer)
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }