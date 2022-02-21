enum Fuel {
  petrol,
  electric,
  hybrid,
  diesel,
  cng,
}

extension FuelExtension on Fuel {
  String get stringRepresentation {
    switch (this) {
      case Fuel.petrol:
        return 'Petrol';
      case Fuel.electric:
        return 'Electric';
      case Fuel.hybrid:
        return 'Hybrid';
      case Fuel.diesel:
        return 'Diesel';
      case Fuel.cng:
        return 'CNG';
    }
  }
}
