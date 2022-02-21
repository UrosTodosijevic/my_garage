import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/add_vehicle/add_vehicle.dart';
import 'package:my_garage/domain/repositories/cars/cars_repository.dart';
import 'package:my_garage/garage/garage.dart';

class GaragePage extends StatelessWidget {
  const GaragePage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => BlocProvider<GarageBloc>(
        create: (context) => GarageBloc(
          carsRepository: context.read<CarsRepository>(),
        )..add(const GarageSubscriptionRequested()),
        child: const GaragePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const GarageView();
  }
}

class GarageView extends StatelessWidget {
  const GarageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffedf1f8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Garage'),
        backgroundColor: const Color(0xff295389),
      ),
      body: BlocBuilder<GarageBloc, GarageState>(builder: (context, state) {
        if (state.cars.isEmpty) {
          if (state.status == GarageStatus.loading) {
            return const Center(
                child: CircularProgressIndicator(color: Color(0xff295389)));
          } else if (state.status != GarageStatus.success) {
            return const SizedBox();
          } else {
            return const EmptyListMessage();
          }
        }
        return ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          children: [
            for (var car in state.cars) CarCard(car: car),
          ],
        );
      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff295389),
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(AddVehiclePage.route());
        },
      ),
    );
  }
}
