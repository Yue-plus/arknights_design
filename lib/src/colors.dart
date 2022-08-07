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

  /// 深灰色
  static const Color darkGrey = Color(0xFF313131);

  /// 粉色
  static const Color pink = Color(0xFFEF4851);

  /// 红色
  static const Color red = Color(0xFFBF1A18);

  /// 橙色
  static const Color orange = Color(0xFFFF9203);

  /// 黄色
  static const Color yellow = Color(0xFFFFEE22);

  /// 绿色
  static const Color green = Color(0xFFB1EC35);

  /// 青色
  static const Color teal = Color(0xFF6AD49A);

  /// 蓝色
  static const Color blue = Color(0xFF22BBFF);

  /// 紫色
  static const Color purple = Color(0xFF6F43FF);
}
