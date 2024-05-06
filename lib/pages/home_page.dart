import 'package:awesome_places/pages/bookings_page/bookings_page.dart';
import 'package:awesome_places/pages/cultural_page.dart';
import 'package:awesome_places/pages/landmarks.dart';
import 'package:awesome_places/pages/natural_wonders_page.dart';
import 'package:awesome_places/pages/night_life.dart';
import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/reusable/home_page/category_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Awesome",
                      style: TextStyle(fontSize: 16, color: mainTextColor),
                    ),
                    const Text(
                      "Places",
                      style: TextStyle(
                          fontSize: 40,
                          color: mainColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: mainColor),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
              style: TextStyle(color: mainTextColor, fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/main.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Select a Place from the categories",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w600, color: mainColor),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                const NaturalWondersPage())));
                  },
                  child: const CategoryCard(
                      category: "Natural Wonders",
                      cardBgColor: firstCategoryColor,
                      cardWidth: 180),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const NightLifePage())));
                  },
                  child: const CategoryCard(
                      category: "Nightlife",
                      cardBgColor: firstCategoryColor,
                      cardWidth: 180),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LandmarksPage()));
                  },
                  child: const CategoryCard(
                      category: "Landmarks",
                      cardBgColor: secondCategoryColor,
                      cardWidth: 180),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CulturalPage()));
                  },
                  child: const CategoryCard(
                      category: "Cultural",
                      cardBgColor: secondCategoryColor,
                      cardWidth: 180),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BookingsPage()));
              },
              child: const CategoryCard(
                  category: "Book For A Ride Today!",
                  cardBgColor: thirdCategoryColor,
                  cardWidth: double.infinity),
            ),
            const SizedBox(
              height: 20,
            ),
          ]),
        )),
      ),
    );
  }
}
