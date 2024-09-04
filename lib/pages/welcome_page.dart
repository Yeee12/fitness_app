import 'package:fitness_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/boxed-water-.png",
            height: 620,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20,),
            const Text("Wherever You Are\nHealth Is Number One",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 5,),
            const Text("There is no instant way to a healthy life",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal
            ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 65,
              height: 5,
              child: LinearProgressIndicator(
                  value: 0.5,
                  backgroundColor: Colors.grey[300],  // Corrected property name
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
              ),
            ),
            const SizedBox(height: 15,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal:30),
           child: ElevatedButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()
              ),
            );
           },
           style: ElevatedButton.styleFrom(
             padding: const EdgeInsets.symmetric(vertical: 15),
             backgroundColor: Colors.black,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30),
             ),
           ),
             child: const Center(
               child: Text("Get Started",
               style: TextStyle(
                fontSize: 16,
                 fontWeight: FontWeight.bold,
                 color: Colors.white
               ),
               ),
             ),
           ),
         )
          ],
        ),
      ),
    );
  }
}
