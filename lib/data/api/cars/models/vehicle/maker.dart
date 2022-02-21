enum Maker {
  alfaRomeo,
  audi,
  bmw,
  chevrolet,
  chrysler,
  citroen,
  dacia,
  fiat,
  ford,
  honda,
  hyundai,
  kia,
  lada,
  mercedes,
  opel,
  peugeot,
  seat,
  toyota,
  zastava,
  skoda,
  other,
}

extension MakerExtension on Maker {
  String get stringRepresentation {
    switch (this) {
      case Maker.alfaRomeo:
        return 'Alfa Romeo';
      case Maker.audi:
        return 'Audi';
      case Maker.bmw:
        return 'BMW';
      case Maker.chevrolet:
        return 'Chevrolet';
      case Maker.chrysler:
        return 'Chrysler';
      case Maker.citroen:
        return 'Citroen';
      case Maker.dacia:
        return 'Dacia';
      case Maker.fiat:
        return 'Fiat';
      case Maker.ford:
        return 'Ford';
      case Maker.honda:
        return 'Honda';
      case Maker.hyundai:
        return 'Hyundai';
      case Maker.kia:
        return 'Kia';
      case Maker.lada:
        return 'Lada';
      case Maker.mercedes:
        return 'Mercedes';
      case Maker.opel:
        return 'Opel';
      case Maker.peugeot:
        return 'Peugeot';
      case Maker.seat:
        return 'Seat';
      case Maker.toyota:
        return 'Toyota';
      case Maker.zastava:
        return 'Zastava';
      case Maker.skoda:
        return 'Skoda';
      case Maker.other:
        return 'Other';
    }
  }
}
