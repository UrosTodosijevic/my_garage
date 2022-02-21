enum SteeringWheelSide { left, right }

extension SteeringWheelSideExtension on SteeringWheelSide {
  String get stringRepresentation {
    switch (this) {
      case SteeringWheelSide.left:
        return 'Left';
      case SteeringWheelSide.right:
        return 'Right';
    }
  }
}
