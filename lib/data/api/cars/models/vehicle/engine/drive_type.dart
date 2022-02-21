enum DriveType {
  frontWheelDrive,
  rearWheelDrive,
  allWheelDrive,
}

extension DriveTypeExtension on DriveType {
  /// String representation of [DriveType] enum
  String get stringRepresentation {
    switch (this) {
      case DriveType.frontWheelDrive:
        return 'Front';
      case DriveType.rearWheelDrive:
        return 'Rear';
      case DriveType.allWheelDrive:
        return '4x4';
    }
  }
}
