import 'package:flutter/material.dart';

class CustomBodyWidget extends StatelessWidget {
  const CustomBodyWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onTap,
  });
  final String imagePath;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 170,
        alignment: Alignment.center,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
