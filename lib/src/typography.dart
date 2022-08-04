import 'dart:ui';

import 'package:arknights_design/arknights_design.dart';

/// 创建一个用于排版的可滚动的容器。
class Typography extends StatelessWidget {
  const Typography({
    Key? key,
    this.width,
    this.height,
    this.color,
    this.children,
  }) : super(key: key);

  final double? width, height;
  final Color? color;
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          width: width,
          height: height,
          color: color ?? const Color(0x22FFFFFF),
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          child: ListView(
            controller: ScrollController(),
            children: children ?? [],
          ),
        ),
      ),
    );
  }
}

/// 标题基类
class _Title extends StatelessWidget {
  const _Title(this.text, {Key? key}) : super(key: key);

  final String text;
  final double fontSize = 48;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
      child: Text(
        text,
        style: TextStyle(
          color: ArknightsColors.white,
          fontSize: fontSize,
          fontWeight: FontWeight.normal,
          fontFamily: '微软雅黑',
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}

/// 一级标题
class H1 extends _Title {
  const H1(super.text, {Key? key}) : super(key: key);
}

/// 二级标题
class H2 extends _Title {
  const H2(super.text, {Key? key}) : super(key: key);

  @override
  double get fontSize => 42;
}

/// 三级标题
class H3 extends _Title {
  const H3(super.text, {Key? key}) : super(key: key);

  @override
  double get fontSize => 38;
}

/// 四级标题
class H4 extends _Title {
  const H4(super.text, {Key? key}) : super(key: key);

  @override
  double get fontSize => 32;
}

/// 五级标题
class H5 extends _Title {
  const H5(super.text, {Key? key}) : super(key: key);

  @override
  double get fontSize => 28;
}

/// 六级标题
class H6 extends _Title {
  const H6(super.text, {Key? key}) : super(key: key);

  @override
  double get fontSize => 23;
}

/// 普通文本样式
const _normalTextStyle = TextStyle(
  color: ArknightsColors.white,
  fontSize: 18,
  fontWeight: FontWeight.normal,
  fontFamily: '微软雅黑',
  decoration: TextDecoration.none,
);

/// 文本
class Span extends StatelessWidget {
  const Span(this.text, {Key? key, this.style}) : super(key: key);

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style ?? _normalTextStyle);
  }
}

/// 分割线
class Hr extends StatelessWidget {
  const Hr({Key? key, this.color}) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      margin: const EdgeInsets.fromLTRB(0, 4, 0, 4),
      color: color ?? ArknightsColors.gray,
    );
  }
}

/// 代码
class Code extends StatelessWidget {
  const Code(this.code, {Key? key}) : super(key: key);

  final String code;

  @override
  Widget build(BuildContext context) {
    return Text(
      code,
      style: const TextStyle(
        color: ArknightsColors.white,
        backgroundColor: ArknightsColors.gray,
        fontSize: 18,
        fontWeight: FontWeight.normal,
        fontFamily: 'Lucida Console',
        decoration: TextDecoration.none,
      ),
    );
  }
}

/// 划删除线的文本
class Del extends StatelessWidget {
  const Del(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: ArknightsColors.white,
        fontSize: 18,
        fontFamily: '微软雅黑',
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.lineThrough,
        decorationStyle: TextDecorationStyle.solid,
        decorationColor: ArknightsColors.white,
      ),
    );
  }
}
