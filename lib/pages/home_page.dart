import 'package:fitness_app/card/exercise_plan_card.dart';
import 'package:fitness_app/card/workout_card.dart';
import 'package:fitness_app/pages/analytic_page.dart';
import 'package:fitness_app/pages/explore_page.dart';
import 'package:fitness_app/pages/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // List of widgets for each page
  final List<Widget> _pages = [
    const HomeScreen(),
    const ExplorePage(),
    const AnalyticPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // Custom back button logic
        leading: _selectedIndex != 0
            ? IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            setState(() {
              _selectedIndex = 0;
            });
          },
        )
            : null,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: "Analytics",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                "Good Morning ",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(width: 4),
              Icon(
                Icons.local_fire_department,
                color: Colors.orange,
              ),
            ],
          ),
          const Text(
            "Pramuditya Uzumaki",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 40),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Popular Workouts",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                WorkoutCard(
                  title: "Lower Body Training",
                  calories: "500 Kcal",
                  imagePath: "assets/images/Image (1).png",
                  time: "50min",
                ),
                WorkoutCard(
                  title: "Lower Body Training",
                  calories: "500 Kcal",
                  imagePath: "assets/images/Image (2).png",
                  time: "50min",
                ),
                WorkoutCard(
                  title: "Lower Body Training",
                  calories: "500 Kcal",
                  imagePath: "assets/images/Image (1).png",
                  time: "50min",
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Today Plan",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: "Lato",
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView(
              children: const [
                ExercisePlanCard(
                  title: "Push up",
                  imagePath: "assets/images/Image (2).png",
                  description: "100 push ups a day",
                  level: "Intermediate",
                  progress: "45",
                ),
                SizedBox(height: 15),
                ExercisePlanCard(
                  title: "Sit Up",
                  imagePath: "assets/images/Mask group (1).png",
                  description: "20 sit up a day",
                  level: "Beginner",
                  progress: "75",
                ),
                SizedBox(height: 15),
                ExercisePlanCard(
                  title: "Push up",
                  imagePath: "assets/images/Image (2).png",
                  description: "100 push ups a day",
                  level: "Beginner",
                  progress: "50",
                ),
                SizedBox(height: 15),
                ExercisePlanCard(
                  title: "Sit Up",
                  imagePath: "assets/images/Mask group (1).png",
                  description: "20 sit up a day",
                  level: "Beginner",
                  progress: "75",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
