// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Car _$$_CarFromJson(Map<String, dynamic> json) => _$_Car(
      id: json['id'] as String? ?? null,
      maker: $enumDecode(_$MakerEnumMap, json['maker']),
      model: json['model'] as String,
      year: json['year'] as int,
      kmsDriven: json['kmsDriven'] as int,
      bodyType: $enumDecode(_$BodyTypeEnumMap, json['bodyType']),
      fuel: $enumDecode(_$FuelEnumMap, json['fuel']),
      driveType: $enumDecode(_$DriveTypeEnumMap, json['driveType']),
      transmission: $enumDecode(_$TransmissionEnumMap, json['transmission']),
      steeringWheelSide:
          $enumDecode(_$SteeringWheelSideEnumMap, json['steeringWheelSide']),
      numberOfSeats: json['numberOfSeats'] as int,
      numberOfDoors: $enumDecode(_$NumberOfDoorsEnumMap, json['numberOfDoors']),
      interiorMaterial:
          $enumDecode(_$InteriorMaterialEnumMap, json['interiorMaterial']),
      interiorColor: $enumDecode(_$InteriorColorEnumMap, json['interiorColor']),
      airConditioning: json['airConditioning'] as bool,
      bodyColor: $enumDecode(_$BodyColorEnumMap, json['bodyColor']),
      imageLocation: json['imageLocation'] as String? ?? '',
    );

Map<String, dynamic> _$$_CarToJson(_$_Car instance) => <String, dynamic>{
      'id': instance.id,
      'maker': _$MakerEnumMap[instance.maker],
      'model': instance.model,
      'year': instance.year,
      'kmsDriven': instance.kmsDriven,
      'bodyType': _$BodyTypeEnumMap[instance.bodyType],
      'fuel': _$FuelEnumMap[instance.fuel],
      'driveType': _$DriveTypeEnumMap[instance.driveType],
      'transmission': _$TransmissionEnumMap[instance.transmission],
      'steeringWheelSide':
          _$SteeringWheelSideEnumMap[instance.steeringWheelSide],
      'numberOfSeats': instance.numberOfSeats,
      'numberOfDoors': _$NumberOfDoorsEnumMap[instance.numberOfDoors],
      'interiorMaterial': _$InteriorMaterialEnumMap[instance.interiorMaterial],
      'interiorColor': _$InteriorColorEnumMap[instance.interiorColor],
      'airConditioning': instance.airConditioning,
      'bodyColor': _$BodyColorEnumMap[instance.bodyColor],
      'imageLocation': instance.imageLocation,
    };

const _$MakerEnumMap = {
  Maker.alfaRomeo: 'alfaRomeo',
  Maker.audi: 'audi',
  Maker.bmw: 'bmw',
  Maker.chevrolet: 'chevrolet',
  Maker.chrysler: 'chrysler',
  Maker.citroen: 'citroen',
  Maker.dacia: 'dacia',
  Maker.fiat: 'fiat',
  Maker.ford: 'ford',
  Maker.honda: 'honda',
  Maker.hyundai: 'hyundai',
  Maker.kia: 'kia',
  Maker.lada: 'lada',
  Maker.mercedes: 'mercedes',
  Maker.opel: 'opel',
  Maker.peugeot: 'peugeot',
  Maker.seat: 'seat',
  Maker.toyota: 'toyota',
  Maker.zastava: 'zastava',
  Maker.skoda: 'skoda',
  Maker.other: 'other',
};

const _$BodyTypeEnumMap = {
  BodyType.sedan: 'sedan',
  BodyType.coupe: 'coupe',
  BodyType.stationWagon: 'stationWagon',
  BodyType.hatchback: 'hatchback',
  BodyType.convertible: 'convertible',
  BodyType.suv: 'suv',
  BodyType.minivan: 'minivan',
  BodyType.pickup: 'pickup',
};

const _$FuelEnumMap = {
  Fuel.petrol: 'petrol',
  Fuel.electric: 'electric',
  Fuel.hybrid: 'hybrid',
  Fuel.diesel: 'diesel',
  Fuel.cng: 'cng',
};

const _$DriveTypeEnumMap = {
  DriveType.frontWheelDrive: 'frontWheelDrive',
  DriveType.rearWheelDrive: 'rearWheelDrive',
  DriveType.allWheelDrive: 'allWheelDrive',
};

const _$TransmissionEnumMap = {
  Transmission.manual: 'manual',
  Transmission.automatic: 'automatic',
  Transmission.semiAutomatic: 'semiAutomatic',
};

const _$SteeringWheelSideEnumMap = {
  SteeringWheelSide.left: 'left',
  SteeringWheelSide.right: 'right',
};

const _$NumberOfDoorsEnumMap = {
  NumberOfDoors.twoPlusOne: 'twoPlusOne',
  NumberOfDoors.fourPlusOne: 'fourPlusOne',
};

const _$InteriorMaterialEnumMap = {
  InteriorMaterial.leather: 'leather',
  InteriorMaterial.fauxLeather: 'fauxLeather',
  InteriorMaterial.fabric: 'fabric',
  InteriorMaterial.other: 'other',
};

const _$InteriorColorEnumMap = {
  InteriorColor.beige: 'beige',
  InteriorColor.black: 'black',
  InteriorColor.brown: 'brown',
  InteriorColor.grey: 'grey',
  InteriorColor.other: 'other',
};

const _$BodyColorEnumMap = {
  BodyColor.yellow: 'yellow',
  BodyColor.orange: 'orange',
  BodyColor.red: 'red',
  BodyColor.purple: 'purple',
  BodyColor.blue: 'blue',
  BodyColor.green: 'green',
  BodyColor.brown: 'brown',
  BodyColor.beige: 'beige',
  BodyColor.white: 'white',
  BodyColor.black: 'black',
  BodyColor.grey: 'grey',
  BodyColor.silver: 'silver',
  BodyColor.gold: 'gold',
  BodyColor.other: 'other',
};
