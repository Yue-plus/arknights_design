import 'package:arknights_design/arknights_design.dart';

/// 颜色等级
enum ColorGrade {
  /// 最亮
  lightest,

  /// 较亮
  lighter,

  /// 亮
  light,

  /// 暗
  dark,

  /// 较暗
  darker,

  /// 最暗
  darkest,
}

/// 透明度分级调整
mixin _OpacityGrade on Color {
  /// 将透明度调整为 87%
  Color get opacity87 => withOpacity(.87);

  /// 将透明度调整为 54%
  Color get opacity54 => withOpacity(.54);

  /// 将透明度调整为 45%
  Color get opacity45 => withOpacity(.45);

  /// 将透明度调整为 38%
  Color get opacity38 => withOpacity(.38);

  /// 将透明度调整为 26%
  Color get opacity26 => withOpacity(.26);

  /// 将透明度调整为 12%
  Color get opacity12 => withOpacity(.12);
}

class ArknightsColor extends Color with _OpacityGrade {
  ArknightsColor(super.value);
}

class ArknightsGradedColor extends ColorSwatch<ColorGrade> with _OpacityGrade {
  const ArknightsGradedColor(int color, Map<ColorGrade, Color> swatch)
      : super(color, swatch);

  Color get lightest => this[ColorGrade.lightest]!;

  Color get lighter => this[ColorGrade.lighter]!;

  Color get light => this[ColorGrade.light]!;

  // @override
  // Color get value => Color(this.value);

  Color get dark => this[ColorGrade.dark]!;

  Color get darker => this[ColorGrade.darker]!;

  Color get darkest => this[ColorGrade.darkest]!;
}

class Colors {
  /// 阻止本类被实例化或被继承。
  const Colors._();

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
  /// 此颜色取自“采购凭证（红票）”；
  /// 此颜色没有定义 [ColorGrade] ，需要的话请使用 [Colors.red]
  static ArknightsColor pink = ArknightsColor(0xFFEF4851);

  /// 红色
  static const ArknightsGradedColor red = ArknightsGradedColor(
    0xFFD7131C,
    <ColorGrade, Color>{
      ColorGrade.lightest: Color(0xFFF7BEBD),
      ColorGrade.lighter: Color(0xFFEF7D7B),
      ColorGrade.light: Color(0xFFE73C3A),
      ColorGrade.dark: Color(0xFF8F1412),
      ColorGrade.darker: Color(0xFF5F0D0C),
      ColorGrade.darkest: Color(0xFF300706),
    },
  );

  /// 橙色
  static const ArknightsGradedColor orange = ArknightsGradedColor(
    0xFFFF9203,
    <ColorGrade, Color>{
      ColorGrade.lightest: Color(0xFFFFE4C1),
      ColorGrade.lighter: Color(0xFFFFC982),
      ColorGrade.light: Color(0xFFFFAE44),
      ColorGrade.dark: Color(0xFFC36F00),
      ColorGrade.darker: Color(0xFF824A00),
      ColorGrade.darkest: Color(0xFF412500),
    },
  );

  /// 黄色
  static const ArknightsGradedColor yellow = ArknightsGradedColor(
    0xFFFFEE22,
    <ColorGrade, Color>{
      ColorGrade.lightest: Color(0xFFFFFAC8),
      ColorGrade.lighter: Color(0xFFFFF691),
      ColorGrade.light: Color(0xFFFFF15B),
      ColorGrade.dark: Color(0xFFDAC800),
      ColorGrade.darker: Color(0xFF918500),
      ColorGrade.darkest: Color(0xFF494300),
    },
  );

  /// 绿色
  static const ArknightsGradedColor green = ArknightsGradedColor(
    0xFFB1EC35,
    <ColorGrade, Color>{
      ColorGrade.lightest: Color(0xFFECFACD),
      ColorGrade.lighter: Color(0xFFD9F69B),
      ColorGrade.light: Color(0xFFC6F169),
      ColorGrade.dark: Color(0xFF8EC713),
      ColorGrade.darker: Color(0xFF5F850C),
      ColorGrade.darkest: Color(0xFF2F4206),
    },
  );

  /// 青色
  static const ArknightsGradedColor teal = ArknightsGradedColor(
    0xFF6AD49A,
    <ColorGrade, Color>{
      ColorGrade.lightest: Color(0xFFD9F4E5),
      ColorGrade.lighter: Color(0xFFB4E9CC),
      ColorGrade.light: Color(0xFF8EDEB2),
      ColorGrade.dark: Color(0xFF35B870),
      ColorGrade.darker: Color(0xFF247B4B),
      ColorGrade.darkest: Color(0xFF123D25),
    },
  );

  /// 蓝色
  static const ArknightsGradedColor blue = ArknightsGradedColor(
    0xFF22BBFF,
    <ColorGrade, Color>{
      ColorGrade.lightest: Color(0xFFC8EEFF),
      ColorGrade.lighter: Color(0xFF91DCFF),
      ColorGrade.light: Color(0xFF5BCBFF),
      ColorGrade.dark: Color(0xFF0095DA),
      ColorGrade.darker: Color(0xFF006391),
      ColorGrade.darkest: Color(0xFF003249),
    },
  );

  /// 紫色
  static const ArknightsGradedColor purple = ArknightsGradedColor(
    0xFF6F43FF,
    <ColorGrade, Color>{
      ColorGrade.lightest: Color(0xFFDBD0FF),
      ColorGrade.lighter: Color(0xFFB7A1FF),
      ColorGrade.light: Color(0xFF9271FF),
      ColorGrade.dark: Color(0xFF3800F1),
      ColorGrade.darker: Color(0xFF2500A1),
      ColorGrade.darkest: Color(0xFF130050),
    },
  );
}
