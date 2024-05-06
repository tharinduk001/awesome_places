import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/shared/button.dart';
import 'package:flutter/material.dart';

class BookingsForm extends StatelessWidget {
  const BookingsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "User Name",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Enter User Name",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Country",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: "Enter Country",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Team Size",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 90,
              height: 90,
              decoration:
                  const BoxDecoration(shape: BoxShape.circle, color: mainColor),
              child: const Center(
                child: Text(
                  "1",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Add or Remove team members",
                  style: TextStyle(
                      color: mainTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CustomButton(
                          buttonText: "Add +",
                          buttonColor: mainGreenColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomButton(
                          buttonText: "Remove -",
                          buttonColor: mainRedColor,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Divider(
          thickness: 1.5,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
          style: TextStyle(
              color: mainTextColor, fontWeight: FontWeight.w500, fontSize: 14),
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(buttonText: "Submit", buttonColor: thirdCategoryColor),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
