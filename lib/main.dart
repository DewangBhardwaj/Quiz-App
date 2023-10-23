import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

void main() {
  runApp(const Quiz());
}



// void main(){
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget{
//   const MyApp({super.key});

//   @override
//   Widget build(context){
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromARGB(255, 138, 5, 200),
//                 Color.fromARGB(255, 122, 11, 166)
//               ]
//             ),
//           ),
//           child: SizedBox(
//             child: Column(
//               children: [
//                 Image.asset('assets/images/quiz-logo.png',
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 const Text("Learn Flutter the Fun Way!!",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 25
//                 ),
//                 ),
//                 OutlinedButton(onPressed: () {},
//                 child: const Text('Start Quiz',
//                 style: TextStyle(
//                   color: Colors.white
//                 ),
//                 ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

// }