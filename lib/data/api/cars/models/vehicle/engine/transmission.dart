enum Transmission {
  manual,
  automatic,
  semiAutomatic,
}

extension TransmissionExtension on Transmission {
  String get stringRepresentation {
    switch (this) {
      case Transmission.manual:
        return 'Manual';
      case Transmission.automatic:
        return 'Automatic';
      case Transmission.semiAutomatic:
        return 'Semi-automatic';
    }
  }
}
