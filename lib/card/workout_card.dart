import 'package:flutter/material.dart';

class WorkoutCard extends StatelessWidget {
  final String time;
  final String calories;
  final String imagePath;
  final String title;

  const WorkoutCard({
    required this.title,
    required this.calories,
    required this.imagePath,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 10,
            bottom: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                // Calories Container with Icon and Border
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white, width: 1),
                    color: Colors.black.withOpacity(0.5), // Optional background color
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.local_fire_department,
                        color: Colors.white,
                        size: 16,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        calories,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 2),
                // Time Container with Icon and Border
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.black26, width: 1),
                    color: Colors.white.withOpacity(0.5), // Optional background color
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.timer,
                        color: Colors.black26,
                        size: 16,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        time,
                        style: const TextStyle(
                          color: Colors.black26,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            right: 5,
            top: 50,
            child: Icon(
              Icons.play_circle_fill,
              color: Colors.greenAccent,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
