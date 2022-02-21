import 'dart:developer';
import 'dart:io' as io;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/domain/repositories/cars/cars_repository.dart';
import 'package:my_garage/domain/repositories/images/images_repository.dart';
import 'package:my_garage/vehicle/vehicle.dart';

import '../../data/api/cars/models/vehicle/vehicle.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({Key? key}) : super(key: key);

  static Route<void> route({required Car car}) {
    return MaterialPageRoute(
      builder: (context) => BlocProvider<VehicleBloc>(
        create: (context) => VehicleBloc(
          carsRepository: context.read<CarsRepository>(),
          imagesRepository: context.read<ImagesRepository>(),
          car: car,
        ),
        child: const VehiclePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<VehicleBloc, VehicleState>(
      listenWhen: (previous, current) =>
          previous.status != current.status &&
          current.status == VehicleStatus.success,
      listener: (BuildContext context, state) {
        Navigator.of(context).pop();
      },
      child: const VehicleView(),
    );
  }
}

class VehicleView extends StatelessWidget {
  const VehicleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Vehicle'),
        backgroundColor: const Color(0xff295389),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              log('Delete vehicle');
              context.read<VehicleBloc>().add(const VehicleDeleted());
            },
          ),
          const SizedBox(width: 12.0),
        ],
      ),
      body: BlocBuilder<VehicleBloc, VehicleState>(
        builder: (context, state) {
          if (state.status == VehicleStatus.deleting) {
            return const Center(
              child: CircularProgressIndicator(
                color: Color(0xff295389),
              ),
            );
          }
          return ListView(
            children: <Widget>[
              state.car.imageLocation.isNotEmpty
                  /*true*/
                  ? Image.file(
                      io.File(state.car.imageLocation),
                      fit: BoxFit.fitWidth,
                      errorBuilder: (context, _, __) {
                        return Image.asset(
                          'assets/images/no_image_available.png',
                          fit: BoxFit.fitWidth,
                        );
                      },
                    )
                  : const SizedBox.shrink(),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: VehicleDetailsTable(
                  name: 'GENERAL INFO',
                  content: _generalInfo(state.car),
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: VehicleDetailsTable(
                  name: 'ENGINE',
                  content: _engine(state.car),
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: VehicleDetailsTable(
                  name: 'BODY',
                  content: _body(state.car),
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: VehicleDetailsTable(
                  name: 'INTERIOR',
                  content: _interior(state.car),
                ),
              ),
              const SizedBox(height: 20.0),
            ],
          );
        },
      ),
    );
  }

  List<NameAndValuePair> _generalInfo(Car car) {
    return <NameAndValuePair>[
      NameAndValuePair(
        parameter: 'Maker',
        value: car.maker.stringRepresentation,
      ),
      NameAndValuePair(
        parameter: 'Model',
        value: car.model,
      ),
      NameAndValuePair(
        parameter: 'Year',
        value: '${car.year.toString()}.',
      ),
      NameAndValuePair(
        parameter: 'kms driven',
        value: '${car.kmsDriven.toString()} km',
      ),
    ];
  }

  List<NameAndValuePair> _body(Car car) {
    return <NameAndValuePair>[
      NameAndValuePair(
        parameter: 'Body type',
        value: car.bodyType.stringRepresentation,
      ),
      NameAndValuePair(
        parameter: 'Number of doors',
        value: car.numberOfDoors.stringRepresentation,
      ),
      NameAndValuePair(
        parameter: 'Body color',
        value: car.bodyColor.stringRepresentation,
      ),
    ];
  }

  List<NameAndValuePair> _interior(Car car) {
    return <NameAndValuePair>[
      NameAndValuePair(
        parameter: 'Steering Wheel side',
        value: car.steeringWheelSide.stringRepresentation,
      ),
      NameAndValuePair(
        parameter: 'Number of seats',
        value: car.numberOfSeats.toString(),
      ),
      NameAndValuePair(
        parameter: 'Interior material',
        value: car.interiorMaterial.stringRepresentation,
      ),
      NameAndValuePair(
        parameter: 'Interior color',
        value: car.interiorColor.stringRepresentation,
      ),
      NameAndValuePair(
        parameter: 'Air conditioning',
        value: car.airConditioning ? 'Yes' : 'No',
      ),
    ];
  }

  List<NameAndValuePair> _engine(Car car) {
    return <NameAndValuePair>[
      NameAndValuePair(
        parameter: 'Fuel',
        value: car.fuel.stringRepresentation,
      ),
      NameAndValuePair(
        parameter: 'Transmission',
        value: car.transmission.stringRepresentation,
      ),
      NameAndValuePair(
        parameter: 'Drive type',
        value: car.driveType.stringRepresentation,
      ),
    ];
  }
}
