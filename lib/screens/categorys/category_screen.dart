import 'package:flutter/material.dart';
import 'package:news_app/screens/categorys/custom_body.dart';
import 'package:news_app/screens/healthy/healthy_screen.dart';
import 'package:news_app/screens/sports/sport_screen.dart';
import 'package:news_app/screens/technology/technology_screen.dart';

import '../business/business_screen.dart';

class CategorysScreen extends StatelessWidget {
  const CategorysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorys'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomBodyWidget(
              title: 'Sport',
              imagePath: 'assets/images/sports-tools.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SportScreen(),
                  ),
                );
              },
            ),
            CustomBodyWidget(
              title: 'Technology',
              imagePath: 'assets/images/technology.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TechnologyScreen(),
                  ),
                );
              },
            ),
            CustomBodyWidget(
              title: 'Healthy',
              imagePath: 'assets/images/2787895.jpeg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HealthyScreen(),
                  ),
                );
              },
            ),
            CustomBodyWidget(
              title: 'Business',
              imagePath: 'assets/images/business.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BusinessScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
