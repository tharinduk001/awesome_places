import 'package:awesome_places/pages/bookings_page/bookings_form.dart';
import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/reusable/bookings_page/vehicle_card.dart';
import 'package:awesome_places/widgets/shared/ratings.dart';
import 'package:flutter/material.dart';

class BookingsPage extends StatelessWidget {
  const BookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lets Book A Tour!",
          style: TextStyle(
              color: mainColor, fontWeight: FontWeight.w600, fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          const Text(
            "Select a vehical",
            style: TextStyle(
                color: mainColor, fontWeight: FontWeight.w600, fontSize: 19),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              VehicleCard(
                vehicleName: "Car",
                vehicleImage: "assets/Mask group.png",
              ),
              VehicleCard(
                vehicleName: "Bike",
                vehicleImage: "assets/Mask group-1.png",
              ),
              VehicleCard(
                vehicleName: "Bus",
                vehicleImage: "assets/Mask group-2.png",
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Selected Place",
            style: TextStyle(
                color: mainColor, fontWeight: FontWeight.w600, fontSize: 19),
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/Cultural.png",
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Selected Place",
                      style: TextStyle(
                          color: mainWhite,
                          fontWeight: FontWeight.w600,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                      style: TextStyle(
                          color: mainWhite,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    RatingsCard()
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Fill The Details",
            style: TextStyle(
                color: mainColor, fontWeight: FontWeight.w600, fontSize: 19),
          ),
          const SizedBox(
            height: 20,
          ),
          const BookingsForm()
        ]),
      )),
    );
  }
}
