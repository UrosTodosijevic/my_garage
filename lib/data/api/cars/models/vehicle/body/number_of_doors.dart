enum NumberOfDoors {
  twoPlusOne,
  fourPlusOne,
}

extension NumberOfDoorsExtension on NumberOfDoors {
  String get stringRepresentation {
    switch (this) {
      case NumberOfDoors.twoPlusOne:
        return '2/3';
      case NumberOfDoors.fourPlusOne:
        return '4/5';
    }
  }
}
