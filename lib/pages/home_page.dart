import 'package:awesome_places/utils/colors.dart';
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
          child: Column(children: [
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
            SizedBox(
              height: 10,
            ),
            Text(
              "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
              style: TextStyle(color: mainTextColor, fontSize: 16),
            ),
               SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/main.png"
            )
          ]),
        )),
      ),
    );
  }
}
