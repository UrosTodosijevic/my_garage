enum BodyColor {
  yellow,
  orange,
  red,
  purple,
  blue,
  green,
  brown,
  beige,
  white,
  black,
  grey,
  silver,
  gold,
  other,
}

extension BodyColorExtension on BodyColor {
  String get stringRepresentation {
    switch (this) {
      case BodyColor.yellow:
        return 'Yellow';
      case BodyColor.orange:
        return 'Orange';
      case BodyColor.red:
        return 'Red';
      case BodyColor.purple:
        return 'Purple';
      case BodyColor.blue:
        return 'Blue';
      case BodyColor.green:
        return 'Green';
      case BodyColor.brown:
        return 'Brown';
      case BodyColor.beige:
        return 'Beige';
      case BodyColor.white:
        return 'White';
      case BodyColor.black:
        return 'Black';
      case BodyColor.grey:
        return 'Grey';
      case BodyColor.silver:
        return 'Silver';
      case BodyColor.gold:
        return 'Gold';
      case BodyColor.other:
        return 'Other';
    }
  }
}
