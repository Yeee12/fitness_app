import 'package:flutter/material.dart';

class BestForYou extends StatelessWidget {
  final String title;
  final String imagePath;
  final String level;
  final String duration;

  const BestForYou({
    required this.level,
    required this.title,
    required this.imagePath,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.48,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 80, // Adjust width and height for the rectangular shape
            height: 95,
            margin: const EdgeInsets.all(8), // Add some margin around the image
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), // Rounded corners for the image box
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover, // Ensures the image fits the box
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 6.0), // Adds some space between image and text
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4), // Add space between title and boxes
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey), // Add border to the box
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey// Rounded corners for the box
                    ),
                    child: Text(
                      duration,
                      style: const TextStyle(
                        color: Color(0xff192126),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(height: 3,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey), // Add border to the box
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey
                      // Rounded corners for the box
                    ),
                    child: Text(
                      level,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
