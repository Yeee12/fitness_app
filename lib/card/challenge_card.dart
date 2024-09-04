import 'package:flutter/material.dart';

class ChallengeCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  const ChallengeCard({
  required this.title,
    required this.color,
    required this.icon,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.28,
      height: 100,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontFamily: ""
            ),
          ),
          Icon(icon, size: 50, color: Colors.white,),
        ],
      ),
    );
  }
}

