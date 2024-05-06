import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/shared/button.dart';
import 'package:awesome_places/widgets/shared/input.dart';
import 'package:awesome_places/widgets/shared/ratings.dart';
import 'package:flutter/material.dart';

class CulturalPage extends StatelessWidget {
  const CulturalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Cultural",
            style: TextStyle(
                color: mainCulturalColor,
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/Cultural.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: mainTextColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Rate this place",
                  style:  TextStyle(
                      color: mainNightLifeColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 22),
                ),
                const SizedBox(
                  height: 20,
                ),
                const RatingsCard(),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: mainTextColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Send Feedback",
                  style: TextStyle(
                      color: mainNightLifeColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 22),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextInputFieldBox(hintText: "Type any feedback here",),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(buttonText: "Submit",buttonColor: thirdCategoryColor,),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
