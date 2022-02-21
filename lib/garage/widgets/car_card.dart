import 'dart:developer';
import 'dart:io' as io;

import 'package:flutter/material.dart';
import 'package:my_garage/data/api/cars/models/models.dart';
import 'package:my_garage/garage/widgets/car_card_parameter_representation.dart';
import 'package:my_garage/vehicle/vehicle.dart';

class CarCard extends StatelessWidget {
  const CarCard({
    Key? key,
    required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    log('Currently building this car: ${car.id!} \'s card.');
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(VehiclePage.route(car: car));
      },
      child: Card(
        color: /*const Color(0xffedf1f8)*/ Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        elevation: 2.0,
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.only(bottom: 28.0),
        child: Column(
          children: [
            car.imageLocation.isNotEmpty
                ? Image.file(
                    io.File(car.imageLocation),
                    height: 220.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, _, __) {
                      return Image.asset(
                        'assets/images/no_image_available.png',
                        height: 220.0,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      );
                    },
                  )
                : const SizedBox.shrink(),
            const SizedBox(height: 16.0),
            Text(
              '${car.maker.stringRepresentation} ${car.model}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff295389),
              ),
            ),
            const SizedBox(height: 12.0),
            CarCardParameterRepresentation(
              imagePath: 'assets/images/kms_driven.png',
              name: 'Kms driven',
              value: '${car.kmsDriven.toString()} km',
            ),
            CarCardParameterRepresentation(
              imagePath: 'assets/images/year.png',
              name: 'Year',
              value: '${car.year.toString()}.',
            ),
            CarCardParameterRepresentation(
              imagePath: 'assets/images/transmission.png',
              name: 'Transmission',
              value: car.transmission.stringRepresentation,
            ),
            CarCardParameterRepresentation(
              imagePath: 'assets/images/fuel.png',
              name: 'Fuel',
              value: car.fuel.stringRepresentation,
            ),
            CarCardParameterRepresentation(
              imagePath: 'assets/images/drive_type.png',
              name: 'Drive type',
              value: car.driveType.stringRepresentation,
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
