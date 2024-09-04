import 'package:flutter/material.dart';

class ExercisePlanCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String progress;
  final String level;

  const ExercisePlanCard({
    required this.title,
    required this.imagePath,
    required this.description,
    required this.level,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imagePath),
            backgroundColor: Colors.grey.shade200,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins"
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 13,
                    fontFamily: "Poppins"
                  ),
                ),
                const SizedBox(height: 5),
                LinearProgressIndicator(
                  value: double.tryParse(progress) ?? 0.0, // Convert String to double
                  backgroundColor: Colors.grey.shade300,
                  color: Colors.green,
                )
              ],
            ),
          ),
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.black26, width: 1),
                color: Colors.black87,
            ),
            child:
            Text(
              level,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            ),
          )
        ],
      ),
    );
  }
}
