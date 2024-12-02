import 'package:flutter/material.dart';

class MyQuestionCard extends StatelessWidget {
  final String questionText;
  final bool isCorrect;
  final bool isSelected;
  final VoidCallback onTap;

  MyQuestionCard({
    required this.questionText,
    required this.isCorrect,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity, // Kartaning kengligi ekranga to'liq mos bo'ladi
        child: Card(
          color: isCorrect ? Colors.green[100] : Colors.red[100],
          elevation: 4,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              questionText,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
