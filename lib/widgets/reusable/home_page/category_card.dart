import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Color cardBgColor;
  final double cardWidth;
  final String category;

  const CategoryCard(
      {super.key,
      required this.cardBgColor,
      required this.cardWidth,
      required this.category});

  final double cardHeight = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13), color: cardBgColor),
      child: Center(
        child: Text(
          category,
          style: const TextStyle(
              color: mainBlack, fontSize: 13, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
