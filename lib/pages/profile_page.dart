import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section
            Stack(
              children: [
                Image.asset(
                  'assets/images/Image (1).png',
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Row(
                    children: [
                      _WorkoutDetailCard(
                        icon: Icons.timer,
                        text: '20 min',
                      ),
                      const SizedBox(width: 10),
                      _WorkoutDetailCard(
                        icon: Icons.local_fire_department,
                        text: '95 kcal',
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Description Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Lower Body Training',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'The lower abdomen and hips are the most difficult areas of the body to reduce when we are on a diet. Even so, in this area, especially the legs as a whole, you can reduce weight even if you don\'t use tools.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
            ),

            // Rounds Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Rounds',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  _RoundCard(
                    imagePath: 'assets/images/Image (8).png',
                    title: 'Jumping Jacks',
                    duration: '00:30',
                  ),
                  _RoundCard(
                    imagePath: 'assets/images/image 70.png',
                    title: 'Squats',
                    duration: '00:45',
                  ),
                  _RoundCard(
                    imagePath: 'assets/images/image 70.png',
                    title: 'Squats',
                    duration: '00:45',
                  ),
                ],
              ),
            ),

            // Let's Workout Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[700], // Use backgroundColor instead of primary
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Let's Workout",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 3.0),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

class _WorkoutDetailCard extends StatelessWidget {
  final IconData icon;
  final String text;

  _WorkoutDetailCard({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 20.0),
          const SizedBox(width: 4.0),
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class _RoundCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String duration;

  _RoundCard({required this.imagePath, required this.title, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            imagePath,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          duration,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey[400],
          ),
        ),
        trailing: const Icon(
          Icons.play_arrow,
          color: Colors.white,
        ),
      ),
    );
  }
}
