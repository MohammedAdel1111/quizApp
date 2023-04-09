import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/util/bindings_app.dart';
import 'package:quizapp/view/screens/quiz_screen/quiz_screen.dart';
import 'package:quizapp/view/screens/result_screen/result_screen.dart';
import 'package:quizapp/view/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: BilndingsApp(),
      title: 'Flutter Quiz App',
      home: WelcomeScreen(),
      getPages: [
        GetPage(name: WelcomeScreen.routeName, page: () => WelcomeScreen()),
        GetPage(name: QuizScreen.routeName, page: () => QuizScreen()),
        GetPage(name: ResultScreen.routeName, page: () => ResultScreen()),
      ],
    );
  }
}
