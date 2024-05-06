import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class LandmarksCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final Color titleColor;

  const LandmarksCard(
      {super.key,
      required this.title,
      required this.description,
      required this.imagePath,
      required this.titleColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 18, color: titleColor, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: TextStyle(
                  fontSize: 14,
                  color: mainTextColor,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
