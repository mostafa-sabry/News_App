import 'package:flutter/material.dart';
import 'package:news_app/screens/technology/custom_technology.dart';
import '../../core/services/news_services.dart';
import '../../models/article_model.dart';

class TechnologyScreen extends StatefulWidget {
  const TechnologyScreen({super.key});

  @override
  State<TechnologyScreen> createState() => _SportScreenState();
}

class _SportScreenState extends State<TechnologyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Technology'),
      ),
      body: FutureBuilder<List<ArticleModel>>(
        future: AppService().getNews(category: 'technology'),
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
              return CustomTechnology(
                articleModel: article,
              );
            },
          );
        },
      ),
    );
  }
}
