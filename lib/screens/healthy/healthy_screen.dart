import 'package:flutter/material.dart';
import 'package:news_app/screens/healthy/custom_healthy.dart';
import '../../core/services/news_services.dart';
import '../../models/article_model.dart';

class HealthyScreen extends StatefulWidget {
  const HealthyScreen({super.key});

  @override
  State<HealthyScreen> createState() => _HealthyScreenState();
}

class _HealthyScreenState extends State<HealthyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Healthy'),
      ),
      body: FutureBuilder<List<ArticleModel>>(
        future: AppService().getNews(category: 'healthy'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No data found'));
          }
          final articles = snapshot.data!;
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              final article = articles[index];
              return CustomHealthy(
                articleModel: article,
              );
            },
          );
        },
      ),
    );
  }
}
