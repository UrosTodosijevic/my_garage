enum BodyType {
  sedan,
  coupe,
  stationWagon,
  hatchback,
  convertible,
  suv,
  minivan,
  pickup,
}

extension BodyTypeExtension on BodyType {
  String get stringRepresentation {
    switch (this) {
      case BodyType.sedan:
        return 'Sedan';
      case BodyType.coupe:
        return 'Coupe';
      case BodyType.stationWagon:
        return 'Station Wagon';
      case BodyType.hatchback:
        return 'Hatchback';
      case BodyType.convertible:
        return 'Convertible';
      case BodyType.suv:
        return 'SUV';
      case BodyType.minivan:
        return 'Minivan';
      case BodyType.pickup:
        return 'Pickup';
    }
  }
}
