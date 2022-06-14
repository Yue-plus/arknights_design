import 'package:flutter/widgets.dart' show IconData;

class ArknightsIcons {
  static IconData _arknightsIconData(int codePoint) {
    return IconData(
      codePoint,
      fontFamily: 'ArknightsIcons',
      fontPackage: 'arknights_design',
    );
  }

  static IconData caster  = _arknightsIconData(0xe900);
  static IconData medic   = _arknightsIconData(0xe901);
  static IconData pioneer = _arknightsIconData(0xe902);
  static IconData sniper  = _arknightsIconData(0xe903);
  static IconData special = _arknightsIconData(0xe904);
  static IconData support = _arknightsIconData(0xe905);
  static IconData tank    = _arknightsIconData(0xe906);
  static IconData warrior = _arknightsIconData(0xe907);
}
