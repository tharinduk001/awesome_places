import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/landmarks/landmarks_card.dart';
import 'package:flutter/material.dart';

class LandmarksPage extends StatelessWidget {
  const LandmarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Landmarks",
          style: TextStyle(
              color: mainLandmarksColor,
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
                height: 20,
              ),
              LandmarksCard(
                title: "Landmarks Place-1",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imagePath:
                    "https://www.usnews.com/object/image/00000169-5e06-df95-a57d-7ec6e0e70000/16-leaning-tower-of-pisa-getty.jpg?update-time=1706735236094&size=responsive640",
                titleColor: subLandmarksColor,
              ),
              const SizedBox(
                height: 20,
              ),
              LandmarksCard(
                title: "Landmarks Place-2",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imagePath:
                    "https://www.pandotrip.com/wp-content/uploads/2018/03/Colosseum-in-Rome-at-sunrise.jpg",
                titleColor: subLandmarksColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
