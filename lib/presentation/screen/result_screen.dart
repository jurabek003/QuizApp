import 'package:flutter/material.dart';
import 'package:my_quiz_app/presentation/components/my_info_text.dart';

class ResultScreen extends StatelessWidget {
  final int correctAnswers;
  final int incorrectAnswers;

  const ResultScreen({
    super.key,
    required this.correctAnswers,
    required this.incorrectAnswers,
  });

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
        title: const Text(
          'Test natijalari',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(25),
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
                  ]),
              child: MyInfoText(correctAnswers)),
           const  SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
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
                    ]),
                child: Column(children: [
                const  Text('Tõgri javoblar:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                const  SizedBox(height: 10),
                  Text('$correctAnswers',style:const TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                ]),
              ),
              Container(
                padding: const EdgeInsets.all(8),
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
                    ]),
                child: Column(children: [
                const  Text('Notõgri javoblar:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                const  SizedBox(height: 10),
                  Text('$incorrectAnswers',style:const TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                ]),
              )
            ],
          ),
      
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/test', ModalRoute.withName('/main'),);
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                minimumSize: const Size(double.infinity,60)
              ),
              child: const Text('Qayta ishlash'),
            ),
          ),
        ],
      ),
    );
  }
}
