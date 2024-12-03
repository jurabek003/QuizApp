import 'package:flutter/material.dart';
import 'package:my_quiz_app/damein/madels/Question.dart';
import 'package:my_quiz_app/presentation/components/my_question_card.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int questionsCount = 0;
  String? selectedAnswer; // Tanlangan javobni saqlash uchun
  int correctAnswerCount = 0;
  int inCorrectAnswerCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        centerTitle: true,
        shadowColor: Colors.black,
        backgroundColor: Colors.amberAccent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
        title: Text(
          "Testlar",
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),

            // Savol nomeri
            Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(5, 7),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "Savol: ${questionsCount + 1}",
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            
            // Savol
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Container(
                alignment: Alignment.center,
                height: 100,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(221, 0, 0, 0),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(8, 10),
                    ),
                  ],
                ),
                child: Text(
                  questions[questionsCount].questionText,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),

            // Javoblar
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(8, 10),
                    ),
                  ],
                ),
                child: Column(
                  children: questions[questionsCount].answers.map((answer) {
                    bool isCorrect = answer ==
                        questions[questionsCount].answers[
                            questions[questionsCount].correctAnswerIndex];

                    // Rangni hisoblash
                    Color cardColor = Colors.transparent;
                    if (selectedAnswer != null) {
                      if (answer == selectedAnswer) {
                        if (isCorrect) {
                          cardColor = Colors.amber;
                          setState(() {
                            correctAnswerCount++;
                          });
                        } else {
                          cardColor = Colors.red;
                          setState(() {
                            inCorrectAnswerCount++;
                          });
                        }
                      }
                    }
                    return MyQuestionCard(
                      questionText: answer,
                      isSelected: selectedAnswer == answer,
                      isCorrect: isCorrect,
                      color: cardColor,
                      onTap: () {
                        if (selectedAnswer == null) {
                          setState(() {
                            selectedAnswer =
                                answer; // Tanlangan javobni saqlash
                          });
                        }
                      },
                    );
                  }).toList(),
                ),
              ),
            ),

            // Button
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    elevation: 15,
                    backgroundColor: selectedAnswer != null
                        ? Colors.orangeAccent
                        : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    if (selectedAnswer != null) {
                      setState(() {
                        if (questionsCount < questions.length - 1) {
                          questionsCount++;
                          selectedAnswer = null; // Yangi savol uchun tozalash
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              showCloseIcon: true,
                              content: Text("Savollar tugadi )"),
                            ),
                          );
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            "/result",
                            ModalRoute.withName('/main'),
                            arguments: {
                              'correctAnswers': correctAnswerCount, // Example value
                              'incorrectAnswers': inCorrectAnswerCount, // Example value
                            },
                          );
                        }
                      });
                    }
                  },
                  child: const Text(
                    "Keyingi",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
