import 'package:flutter/material.dart';
import 'package:news_app/screens/web_view.dart';

import '../../models/article_model.dart';

class CustomHealthy extends StatelessWidget {
  const CustomHealthy({
    super.key,
    required this.articleModel,
  });

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return WebViewApp(url: articleModel.url!);
              },
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(articleModel.image ??
                        "https://user-images.githubusercontent.com/24848110/33519396-7e56363c-d79d-11e7-969b-09782f5ccbab.png"),
                  ),
                ),
              ),
            ),
            Text(
              articleModel.title,
              style: TextStyle(fontSize: 25),
            ),
            Text(
              articleModel.subTitle ?? "",
              style: const TextStyle(fontSize: 18),
            ),
            //Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return WebViewApp(url: articleModel.url!);
                          },
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 35,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
