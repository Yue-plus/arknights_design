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

class _TitleText extends StatelessWidget {
  const _TitleText(this.text, {Key? key, this.fontSize}) : super(key: key);

  final String? text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: TextStyle(
        color: ArknightsColors.white,
        fontSize: fontSize ?? 32,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.none,
      ),
    );
  }
}

/// 一级标题
class H1 extends StatelessWidget {
  const H1(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => _TitleText(text, fontSize: 48);
}

/// 二级标题
class H2 extends StatelessWidget {
  const H2(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => _TitleText(text, fontSize: 42);
}

/// 三级标题
class H3 extends StatelessWidget {
  const H3(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => _TitleText(text, fontSize: 38);
}

/// 四级标题
class H4 extends StatelessWidget {
  const H4(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => _TitleText(text, fontSize: 32);
}

/// 五级标题
class H5 extends StatelessWidget {
  const H5(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => _TitleText(text, fontSize: 28);
}

/// 六级标题
class H6 extends StatelessWidget {
  const H6(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => _TitleText(text, fontSize: 23);
}

/// 文本
class Span extends StatelessWidget {
  const Span(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          color: ArknightsColors.white,
          fontSize: 18,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.none,
        ));
  }
}
