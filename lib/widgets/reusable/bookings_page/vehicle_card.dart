import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class VehicleCard extends StatelessWidget {
  final String vehicleName;
  final String vehicleImage;

  const VehicleCard(
      {super.key, required this.vehicleName, required this.vehicleImage});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(vehicleImage,
                width: 100, height: 100, fit: BoxFit.cover)),
        const SizedBox(height: 5),
        Text(
          vehicleName,
          style: const TextStyle(
              color: mainColor, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ]),
    );
  }
}
