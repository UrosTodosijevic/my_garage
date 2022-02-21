enum InteriorColor {
  beige,
  black,
  brown,
  grey,
  other,
}

extension InteriorColorExtension on InteriorColor {
  String get stringRepresentation {
    switch (this) {
      case InteriorColor.beige:
        return 'Beige';
      case InteriorColor.black:
        return 'Black';
      case InteriorColor.brown:
        return 'Brown';
      case InteriorColor.grey:
        return 'Grey';
      case InteriorColor.other:
        return 'Other';
    }
  }
}
