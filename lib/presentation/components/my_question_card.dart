import 'package:flutter/material.dart';

class MyQuestionCard extends StatelessWidget {
  final String questionText;
  final bool isCorrect;
  final bool isSelected;
  final Color color;
  final VoidCallback onTap;

  MyQuestionCard({
    required this.questionText,
    required this.isCorrect,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(width: 1.5),
                color: color,
                borderRadius: BorderRadius.circular(20),
                  ),
            padding: EdgeInsets.all(3),
            child: Center(
              child: Text(
                questionText,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,            
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
