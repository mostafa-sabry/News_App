import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';
import '../constatns/app_constatns.dart';

// &language=ar
class AppService {
  Dio dio = Dio();

  Future<List<ArticleModel>> getNews({required String category}) async {
    final response =
        await dio.get("$baseUrl/everything?q=$category&apiKey=$apiKey");

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> articleList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel.fromJson(article);
      articleList.add(articleModel);
    }
    return articleList;
  }
}
