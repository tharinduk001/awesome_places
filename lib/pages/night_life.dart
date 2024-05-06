import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/reusable/image_card.dart';
import 'package:flutter/material.dart';

class NightLifePage extends StatelessWidget {
  const NightLifePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Nightlife",
          style: TextStyle(
              color: mainNightLifeColor,
              fontWeight: FontWeight.w600,
              fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
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
                title: "Nightlife Place-1",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imagePath: "assets/night1.jpg",
                isCornerRounded: true,
                titleColor: subNightLifeColor,
              ),
              ImageCard(
                title: "Nightlife Place-2",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imagePath: "assets/night2.jpg",
                isCornerRounded: true,
                titleColor: subNightLifeColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
