import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/reusable/image_card.dart';
import 'package:flutter/material.dart';

class NaturalWondersPage extends StatelessWidget {
  const NaturalWondersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Natural Wonders",
          style: TextStyle(
              color: mainNaturalWondersColor,
              fontWeight: FontWeight.w600,
              fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                    color: mainTextColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              ImageCard(
                title: "Nature Wonders Place-1",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imagePath: "assets/nature1.png",
                titleColor: subNaturalWondersColor,
              ),
              ImageCard(
                title: "Nature Wonders Place-2",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imagePath: "assets/nature2.png",
                titleColor: subNaturalWondersColor,
              ),
              ImageCard(
                title: "Nature Wonders Place-3",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imagePath: "assets/nature3.png",
                titleColor: subNaturalWondersColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
