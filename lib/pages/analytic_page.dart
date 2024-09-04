import 'package:flutter/material.dart';

class AnalyticPage extends StatelessWidget {
  const AnalyticPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(),
              const SizedBox(height: 16.0),
              TodayReportSection(),
              const SizedBox(height: 16.0),
              Expanded(
                child: MetricsSection(),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Header Section
class HeaderSection extends StatelessWidget {
  final List<Map<String, dynamic>> days = [
    {'day': 'S', 'date': 10},
    {'day': 'M', 'date': 11},
    {'day': 'T', 'date': 18, 'selected': true},
    {'day': 'W', 'date': 13},
    {'day': 'T', 'date': 14},
    {'day': 'F', 'date': 15},
    {'day': 'S', 'date': 17},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'September 2024',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: days.map((day) {
            return Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: day['selected'] == true ? Colors.black : Colors.green[300],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Text(
                    day['day'],
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: day['selected'] == true ? Colors.white : Colors.black,
                    ),
                  ),
                  Text(
                    day['date'].toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: day['selected'] == true ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

// Today Report Section
class TodayReportSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Today Report',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16.0),
        Text(
          'Active calories',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey[700],
          ),
        ),
        const Text(
          '645 Cal',
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16.0),
        CircularProgressIndicator(
          value: 0.8,
          strokeWidth: 8.0,
          backgroundColor: Colors.grey[300],
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.purple),
        ),
        const SizedBox(height: 8.0),
        Text(
          'Training time',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey[700],
          ),
        ),
        const Text(
          '80%',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}

// Metrics Section
class MetricsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          MetricCard(
            icon: Icons.directions_bike,
            title: 'Cycling',
            data: '645 Cal',
            extra: 'Map',
            color: Colors.orange[100]!,
          ),
          MetricCard(
            icon: Icons.favorite,
            title: 'Heart Rate',
            data: '79 Bpm',
            extra: 'Heart Beat',
            color: Colors.red[100]!,
          ),
          MetricCard(
            icon: Icons.directions_walk,
            title: 'Steps',
            data: '999/2000',
            extra: 'Keep it Up! 💪',
            color: Colors.blue[100]!,
          ),
          MetricCard(
            icon: Icons.bedtime,
            title: 'Sleep',
            data: '8 Hrs',
            extra: '7 Day Avg',
            color: Colors.purple[100]!,
          ),
          MetricCard(
            icon: Icons.local_drink,
            title: 'Water',
            data: '6/8 Cups',
            extra: 'Keep Hydrated',
            color: Colors.teal[100]!,
          ),
        ],
      ),
    );
  }
}

// Metric Card
class MetricCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String data;
  final String extra;
  final Color color;

  MetricCard({
    required this.icon,
    required this.title,
    required this.data,
    required this.extra,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color, // Apply the color here
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 30.0, color: Colors.grey[700]),
                const SizedBox(width: 8.0),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Text(
              data,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Text(
              extra,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
