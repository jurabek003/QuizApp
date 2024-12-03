import 'package:flutter/material.dart';
import 'package:my_quiz_app/presentation/screen/main_screen.dart';
import 'package:my_quiz_app/presentation/screen/register_screen.dart';
import 'package:my_quiz_app/presentation/screen/result_screen.dart';
import 'package:my_quiz_app/presentation/screen/test_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/main',
    routes: {
      '/main': (context) => const MainScreen(),
      '/register': (context) => const RegisterScreen(),
      '/test': (context) => const TestScreen(),
    },
    onGenerateRoute: (settings) {
      if (settings.name == '/result') {
        final args = settings.arguments as Map<String, int>;
        return MaterialPageRoute(
          builder: (context) => ResultScreen(
            correctAnswers: args['correctAnswers']!,
            incorrectAnswers: args['incorrectAnswers']!,
          ),
        );
      }
      return null;
    },
  ));
}
