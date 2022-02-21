import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:my_garage/add_vehicle/add_vehicle.dart';
import 'package:my_garage/domain/repositories/cars/cars_repository.dart';
import 'package:my_garage/domain/repositories/images/images_repository.dart';

class AddVehiclePage extends StatelessWidget {
  const AddVehiclePage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => BlocProvider<AddVehicleBloc>(
        create: (context) => AddVehicleBloc(
          carsRepository: context.read<CarsRepository>(),
          imagesRepository: context.read<ImagesRepository>(),
        ),
        child: const AddVehiclePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddVehicleBloc, AddVehicleState>(
      listenWhen: (previous, current) =>
          // previous.status != current.status &&
          current.status.isSubmissionSuccess,
      listener: (BuildContext context, state) {
        Navigator.of(context).pop();
      },
      child: const AddVehicleView(),
    );
  }
}

class AddVehicleView extends StatefulWidget {
  const AddVehicleView({Key? key}) : super(key: key);

  @override
  State<AddVehicleView> createState() => _AddVehicleViewState();
}

class _AddVehicleViewState extends State<AddVehicleView> {
  final _yearInputFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _yearInputFocusNode.addListener(() {
      if (!_yearInputFocusNode.hasFocus) {
        log('year lost focus');
        context.read<AddVehicleBloc>().add(const YearUnfocused());
      }
    });
  }

  @override
  void dispose() {
    _yearInputFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final imageLocation =
            context.read<AddVehicleBloc>().state.imageLocation;
        if (imageLocation.isNotEmpty) {
          context
              .read<AddVehicleBloc>()
              .add(const ImageDiscardedBeforeExiting());
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Add New Vehicle'),
          backgroundColor: const Color(0xff295389),
          actions: [
            IconButton(
              icon: const Icon(Icons.check_rounded),
              iconSize: 28.0,
              onPressed: () {
                context.read<AddVehicleBloc>().add(const FormSubmitted());
              },
            ),
            const SizedBox(width: 12.0),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          children: <Widget>[
            const SectionName(
              title: 'General Info',
              shouldHaveTopPadding: false,
            ),
            const ParameterWithDropdownChoice(
              text: 'Maker:',
              hint: 'Choose...',
              // isRequired: true,
              inputWidget: MakerInputWidget(),
            ),
            const ParameterWithTextInput(
              text: 'Model:',
              inputWidget: ModelInputWidget(),
            ),
            Row(
              children: [
                Expanded(
                  child: ParameterWithTextInput(
                    text: 'Year',
                    inputWidget:
                        YearInputWidget(focusNode: _yearInputFocusNode),
                  ),
                ),
                const SizedBox(width: 20.0),
                const Expanded(
                  child: ParameterWithTextInput(
                    text: 'Kms driven',
                    /*keyboardType: TextInputType.number,
                    maxLength: 7,*/
                    inputWidget: KmsDrivenInputWidget(),
                  ),
                ),
                const SizedBox(width: 8.0),
                const Text('km'),
              ],
            ),
            const SectionName(title: 'Body'),
            const ParameterWithTextInput(
              text: 'Body type:',
              inputWidget: BodyTypeInputWidget(),
            ),
            const ParameterWithTextInput(
              text: 'Number of doors:',
              inputWidget: NumberOfDoorsInputWidget(),
            ),
            const ParameterWithDropdownChoice(
              text: 'Body color:',
              hint: 'Choose...',
              inputWidget: BodyColorInputWidget(),
            ),
            const SectionName(title: 'Interior'),
            const ParameterWithDropdownChoice(
              text: 'Steering wheel side:',
              hint: 'Choose...',
              inputWidget: SteeringWheelSideInputWidget(),
            ),
            const ParameterWithDropdownChoice(
              text: 'Number of seats:',
              hint: 'Choose...',
              inputWidget: NumberOfSeatsInputWidget(),
            ),
            const ParameterWithDropdownChoice(
              text: 'Interior material:',
              hint: 'Choose...',
              inputWidget: InteriorMaterialInputWidget(),
            ),
            const ParameterWithDropdownChoice(
              text: 'Interior color:',
              hint: 'Choose...',
              inputWidget: InteriorColorInputWidget(),
            ),
            const ParameterWithDropdownChoice(
              text: 'Air Conditioning:',
              hint: 'Choose...',
              inputWidget: AirConditioningInputWidget(),
            ),
            const SectionName(title: 'Engine'),
            const ParameterWithDropdownChoice(
              text: 'Fuel:',
              hint: 'Choose...',
              inputWidget: FuelInputWidget(),
            ),
            const ParameterWithDropdownChoice(
              text: 'Transmission:',
              hint: 'Choose...',
              inputWidget: TransmissionInputWidget(),
            ),
            const ParameterWithDropdownChoice(
              text: 'Drive type:',
              hint: 'Choose...',
              inputWidget: DriveTypeInputWidget(),
            ),
            const AddImageButton(),
          ],
        ),
      ),
    );
  }
}
