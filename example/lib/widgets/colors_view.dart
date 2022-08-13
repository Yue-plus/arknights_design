import 'package:arknights_design/arknights_design.dart';
import 'package:arknights_design_demo/widgets/view.dart';

class _ColorBox extends StatelessWidget {
  const _ColorBox(this.color, {Key? key, this.text}) : super(key: key);

  final Color color;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      color: color,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (text != null)
            Text(
              text ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.normal,
                backgroundColor: Colors.black54,
                decoration: TextDecoration.none,
              ),
            ),
          if (color.value != 0)
            Text(
              color.value.toRadixString(16).toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Lucida Console',
                fontWeight: FontWeight.normal,
                backgroundColor: Colors.black54,
                decoration: TextDecoration.none,
              ),
            ),
        ],
      ),
    );
  }
}

class WidgetsColorsView extends StatelessWidget {
  const WidgetsColorsView({Key? key}) : super(key: key);

  static const String routeName = '/widgets/colors';

  @override
  Widget build(BuildContext context) {
    return WidgetsView(Typography(children: [
      const H1('颜色'),
      const H2('透明色'),
      Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: const [
          _ColorBox(Colors.transparent, text: '透明'),
          Span('透明色。在动画中使用会导致奇怪的效果。'),
        ],
      ),
      const H2('黑白'),
      Wrap(children: const [
        _ColorBox(Colors.transparent, text: '黑色'),
        _ColorBox(Colors.black, text: 'black'),
        _ColorBox(Colors.black87, text: 'black87'),
        _ColorBox(Colors.black54, text: 'black54'),
        _ColorBox(Colors.black45, text: 'black45'),
        _ColorBox(Colors.black38, text: 'black38'),
        _ColorBox(Colors.black26, text: 'black26'),
        _ColorBox(Colors.black12, text: 'black12'),
      ]),
      Wrap(children: const [
        _ColorBox(Colors.transparent, text: '白色'),
        _ColorBox(Colors.white, text: 'white'),
        _ColorBox(Colors.white70, text: 'white70'),
        _ColorBox(Colors.white60, text: 'white60'),
        _ColorBox(Colors.white54, text: 'white54'),
        _ColorBox(Colors.white38, text: 'white38'),
        _ColorBox(Colors.white30, text: 'white30'),
        _ColorBox(Colors.white12, text: 'white12'),
        _ColorBox(Colors.white10, text: 'white10'),
      ]),
      const H2('灰度'),
      Wrap(children: [
        _ColorBox(Colors.grey, text: '灰色'),
        _ColorBox(Grayscale(0xAC), text: '灰色'),
        const _ColorBox(Colors.darkGrey, text: '深灰色'),
        const _ColorBox(Colors.lightGrey, text: '浅灰色'),
      ]),
      const H2('色板'),
      Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          _ColorBox(Colors.pink, text: 'pink'),
          _ColorBox(Colors.pink.opacity87),
          _ColorBox(Colors.pink.opacity54),
          _ColorBox(Colors.pink.opacity45),
          _ColorBox(Colors.pink.opacity38),
          _ColorBox(Colors.pink.opacity26),
          _ColorBox(Colors.pink.opacity12),
          const SizedBox(width: 16),
          Wrap(children: const [
            Span('粉色；此颜色取自“采购凭证（红票）”；此颜色没有定义'),
            Code('[ColorGrade]'),
            Span(' ，需要的话请使用 '),
            Code('[Colors.red]'),
          ]),
        ],
      ),
      Wrap(children: [
        Wrap(children: const [
          _ColorBox(Colors.transparent),
          _ColorBox(Colors.transparent, text: 'lightest'),
          _ColorBox(Colors.transparent, text: 'lighter'),
          _ColorBox(Colors.transparent, text: 'light'),
          _ColorBox(Colors.transparent, text: '原色'),
          _ColorBox(Colors.transparent, text: 'dark'),
          _ColorBox(Colors.transparent, text: 'darker'),
          _ColorBox(Colors.transparent, text: 'darkest'),
          _ColorBox(Colors.transparent, text: 'opacity\n87%'),
          _ColorBox(Colors.transparent, text: 'opacity\n54%'),
          _ColorBox(Colors.transparent, text: 'opacity\n45%'),
          _ColorBox(Colors.transparent, text: 'opacity\n38%'),
          _ColorBox(Colors.transparent, text: 'opacity\n26%'),
          _ColorBox(Colors.transparent, text: 'opacity\n12%'),
        ]),
        Wrap(children: [
          const _ColorBox(Colors.transparent, text: '红色\nred'),
          _ColorBox(Colors.red.lightest),
          _ColorBox(Colors.red.lighter),
          _ColorBox(Colors.red.light),
          const _ColorBox(Colors.red),
          _ColorBox(Colors.red.dark),
          _ColorBox(Colors.red.darker),
          _ColorBox(Colors.red.darkest),
          _ColorBox(Colors.red.opacity87),
          _ColorBox(Colors.red.opacity54),
          _ColorBox(Colors.red.opacity45),
          _ColorBox(Colors.red.opacity38),
          _ColorBox(Colors.red.opacity26),
          _ColorBox(Colors.red.opacity12),
        ]),
        Wrap(children: [
          const _ColorBox(Colors.transparent, text: '橙色\norange'),
          _ColorBox(Colors.orange.lightest),
          _ColorBox(Colors.orange.lighter),
          _ColorBox(Colors.orange.light),
          const _ColorBox(Colors.orange),
          _ColorBox(Colors.orange.dark),
          _ColorBox(Colors.orange.darker),
          _ColorBox(Colors.orange.darkest),
          _ColorBox(Colors.orange.opacity87),
          _ColorBox(Colors.orange.opacity54),
          _ColorBox(Colors.orange.opacity45),
          _ColorBox(Colors.orange.opacity38),
          _ColorBox(Colors.orange.opacity26),
          _ColorBox(Colors.orange.opacity12),
        ]),
        Wrap(children: [
          const _ColorBox(Colors.transparent, text: '黄色\nyellow'),
          _ColorBox(Colors.yellow.lightest),
          _ColorBox(Colors.yellow.lighter),
          _ColorBox(Colors.yellow.light),
          const _ColorBox(Colors.yellow),
          _ColorBox(Colors.yellow.dark),
          _ColorBox(Colors.yellow.darker),
          _ColorBox(Colors.yellow.darkest),
          _ColorBox(Colors.yellow.opacity87),
          _ColorBox(Colors.yellow.opacity54),
          _ColorBox(Colors.yellow.opacity45),
          _ColorBox(Colors.yellow.opacity38),
          _ColorBox(Colors.yellow.opacity26),
          _ColorBox(Colors.yellow.opacity12),
        ]),
        Wrap(children: [
          const _ColorBox(Colors.transparent, text: '绿色\ngreen'),
          _ColorBox(Colors.green.lightest),
          _ColorBox(Colors.green.lighter),
          _ColorBox(Colors.green.light),
          const _ColorBox(Colors.green),
          _ColorBox(Colors.green.dark),
          _ColorBox(Colors.green.darker),
          _ColorBox(Colors.green.darkest),
          _ColorBox(Colors.green.opacity87),
          _ColorBox(Colors.green.opacity54),
          _ColorBox(Colors.green.opacity45),
          _ColorBox(Colors.green.opacity38),
          _ColorBox(Colors.green.opacity26),
          _ColorBox(Colors.green.opacity12),
        ]),
        Wrap(children: [
          const _ColorBox(Colors.transparent, text: '青色\nteal'),
          _ColorBox(Colors.teal.lightest),
          _ColorBox(Colors.teal.lighter),
          _ColorBox(Colors.teal.light),
          const _ColorBox(Colors.teal),
          _ColorBox(Colors.teal.dark),
          _ColorBox(Colors.teal.darker),
          _ColorBox(Colors.teal.darkest),
          _ColorBox(Colors.teal.opacity87),
          _ColorBox(Colors.teal.opacity54),
          _ColorBox(Colors.teal.opacity45),
          _ColorBox(Colors.teal.opacity38),
          _ColorBox(Colors.teal.opacity26),
          _ColorBox(Colors.teal.opacity12),
        ]),
        Wrap(children: [
          const _ColorBox(Colors.transparent, text: '蓝色\nblue'),
          _ColorBox(Colors.blue.lightest),
          _ColorBox(Colors.blue.lighter),
          _ColorBox(Colors.blue.light),
          const _ColorBox(Colors.blue),
          _ColorBox(Colors.blue.dark),
          _ColorBox(Colors.blue.darker),
          _ColorBox(Colors.blue.darkest),
          const _ColorBox(Colors.blue),
          _ColorBox(Colors.blue.opacity54),
          _ColorBox(Colors.blue.opacity45),
          _ColorBox(Colors.blue.opacity38),
          _ColorBox(Colors.blue.opacity26),
          _ColorBox(Colors.blue.opacity12),
        ]),
        Wrap(children: [
          const _ColorBox(Colors.transparent, text: '紫色\npurple'),
          _ColorBox(Colors.purple.lightest),
          _ColorBox(Colors.purple.lighter),
          _ColorBox(Colors.purple.light),
          const _ColorBox(Colors.purple),
          _ColorBox(Colors.purple.dark),
          _ColorBox(Colors.purple.darker),
          _ColorBox(Colors.purple.darkest),
          _ColorBox(Colors.purple.opacity87),
          _ColorBox(Colors.purple.opacity54),
          _ColorBox(Colors.purple.opacity45),
          _ColorBox(Colors.purple.opacity38),
          _ColorBox(Colors.purple.opacity26),
          _ColorBox(Colors.purple.opacity12),
        ]),
      ]),
    ]));
  }
}
