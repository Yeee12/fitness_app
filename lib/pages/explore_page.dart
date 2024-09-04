import 'package:fitness_app/card/best_for_you.dart';
import 'package:fitness_app/card/challenge_card.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
               image: DecorationImage(image: const AssetImage("assets/images/Image.png"),
               fit: BoxFit.cover,
                 colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
               ),
              ),
            child: const Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Best Quarantine\n Workout",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(height: 100,),
                Text("See more >",
                style: TextStyle(
                  color: Colors.lightGreenAccent,
                ),)
              ],
             ),
            ),
            const SizedBox(height: 20,),
            const Text("Best for you",
              style: TextStyle(
               fontSize: 18,
               fontWeight: FontWeight.bold,
               fontFamily: "Lato" ,
              ),
            ),
            const SizedBox(height: 10,),
            const Row(
          mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BestForYou(level: "Beginner",
                    title: "Belle fat burner",
                    imagePath: "assets/images/Image (3).png",
                    duration: "10min"
                ),
                SizedBox(width: 1,),
                BestForYou(level: "Beginner",
                    title: "Lose fat",
                    imagePath: "assets/images/Image (4).png",
                    duration: "10min"
                ),
              ],
            ),
            const SizedBox(height: 15,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BestForYou(level: "Expert",
                    title: "Plank",
                    imagePath: "assets/images/Image (5).png",
                    duration: "5min"
                ),
                BestForYou(level: "Intermidate",
                    title: "Build biceps",
                    imagePath: "assets/images/Image (6).png",
                    duration: "30min"
                ),
              ],
            ),
            const SizedBox(height: 15,),
            const Text("Challenge",
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChallengeCard(title: "Plank\n Challenge",
                    color: Color(0xffBBF246),
                    icon: Icons.local_fire_department,
                ),
                ChallengeCard(title: "Squat\n Challenge",
                  color: Colors.lightGreenAccent,
                  icon: Icons.fitness_center_sharp,
                ),
                ChallengeCard(title: "Sprint\n Challenge",
                  color: Colors.grey,
                  icon: Icons.directions_run_rounded,
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               BestForYou(level: 'Beginner',
                   title: "Leg excercises",
                   imagePath: "assets/images/Image (7).png",
                   duration: '10min',
               ),
                BestForYou(level: 'Beginner',
                  title: "Backward lunges",
                  imagePath: "assets/images/Image (8).png",
                  duration: '5min',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
