import 'package:flutter/material.dart';
import 'package:my_quiz_app/damein/madels/Question.dart';
import 'package:my_quiz_app/presentation/components/my_question_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int questionsCount = 0;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3.0,
        centerTitle: true,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
        title: const Text(
          "Testlar",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
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
                padding: EdgeInsets.all(7),
                child: Text(
                  "Savol: ${questionsCount + 1}",
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              alignment: Alignment.center,
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
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              padding: EdgeInsets.all(7),
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
                  return MyQuestionCard(
                    questionText: answer,
                    isSelected: isSelected,
                    isCorrect: answer ==
                        questions[questionsCount].answers[
                            questions[questionsCount].correctAnswerIndex],
                    onTap: () {
                      if (questionsCount < questions.length - 1) {
                        setState(() {
                          isSelected = true;
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            showCloseIcon: true,
                            content: Text("Savollar tugadi :)"),
                          ),
                        );
                      }
                    },
                  );
                }).toList(),
              ),
            ),
          ),
         const SizedBox(),
          ElevatedButton(onPressed: (){
                    if(isSelected){
                      setState(() {
                        questionsCount++;
                        isSelected = false;
                      });
                    }
          },
           child: const Text("Keyingi",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),))
        ],
      ),
    );
  }
}
