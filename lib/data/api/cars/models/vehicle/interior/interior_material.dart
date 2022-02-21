enum InteriorMaterial {
  leather,
  fauxLeather,
  fabric,
  other,
}

extension InteriorMaterialExtension on InteriorMaterial {
  String get stringRepresentation {
    switch (this) {
      case InteriorMaterial.leather:
        return 'Leather';
      case InteriorMaterial.fauxLeather:
        return 'Faux Leather';
      case InteriorMaterial.fabric:
        return 'Fabric';
      case InteriorMaterial.other:
        return 'Other';
    }
  }
}
