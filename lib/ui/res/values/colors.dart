class JlColors {


 


  static double alpha(JlColorEmphasize emphasize) {
    switch (emphasize) {
      case JlColorEmphasize.original:
        return 1;

      case JlColorEmphasize.medium:
        return 0.6;

      case JlColorEmphasize.high:
        return 0.85;

      case JlColorEmphasize.lowest:
        return 0.05;
      case JlColorEmphasize.disabled:
        return 0.3;

      default:
        return 0.04;
    }
  }
}

enum JlColorEmphasize { lowest, disabled, medium, high, original }

