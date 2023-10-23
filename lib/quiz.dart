import 'package:flutter/material.dart';

import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:quiz_app/data/questions.dart';
// import 'package:quiz_app/model/quiz_question.dart';
// import 'package:quiz_app/start_screen.dart';
// import 'package:quiz_app/questions_screen.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});

//   @override
//   State<MainScreen> createState() {
//     return _MainScreenState();
//   }
// }

// class _MainScreenState extends State<MainScreen> {
//   // Widget? currentScreen;

//   // @override
//   // void initState() {
//   //   currentScreen = BodyOfApp(switchScreen);
//   //   super.initState();
//   // }   or

//   List<String> selectedAnswer = [];

//   var currentScreen = 'start-screen';

//   void switchScreen() {
//     setState(() {
//       currentScreen = 'question-screen';
//     });
//   }

//   void chooseAnswer(String answer){
//     selectedAnswer.add(answer);

//     // if(selectedAnswer.length == questions.length){
//     //   setState(() {
//     //     selectedAnswer = [];
//     //     currentScreen = 'start-screen';
//     //   });
//     // }
//   }

//   @override
//   Widget build(context) {
//     //Widget screenWidget = QuizQuestion(switchScreen);

// //     if(currentScreen == 'question-screen'){
// //       screenWidget = QuestionScreen(
// //     onSelectAnswer: (String answer) {
// //       chooseAnswer(answer);
// //     },
// //   );
// // }

//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Color.fromARGB(255, 85, 11, 135),
//                 Color.fromARGB(255, 99, 8, 148)
//               ],
//             ),
//           ),
//           // child: currentScreen,      or
//           child: currentScreen == 'start-screen'
//               ? BodyOfApp(switchScreen)
//               : QuestionScreen(onSelectAnswer: chooseAnswer, ),
//         ),
//       ),
//     );
//   }
// }
