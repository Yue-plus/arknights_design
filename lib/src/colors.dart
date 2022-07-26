import 'dart:ui' show Color;

import 'package:arknights_design/arknights_design.dart';

class ArknightsColors {
  /// 阻止本类被实例化或被继承。
  const ArknightsColors._();

  /// 透明色。在动画中使用会导致奇怪的效果。
  static const Color transparent = Color(0x00000000);

  /// 纯黑
  static const Color black = Color(0xFF000000);

  /// 纯白
  static const Color white = Color(0xFFFFFFFF);

  /// 灰色
  static const Color gray = Color(0xFF525252);
  static const Color darkGrey = Color(0xFF313131);
  static const Color blue = Color(0xFF22BBFF);
  static const Color yellow = Color(0xFFFFEE22);
}
