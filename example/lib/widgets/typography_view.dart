import 'package:arknights_design/arknights_design.dart';
import 'package:arknights_design_demo/widgets/view.dart';

class WidgetsTypographyView extends StatelessWidget {
  const WidgetsTypographyView({Key? key}) : super(key: key);

  static const String routeName = '/widgets/typography';

  @override
  Widget build(BuildContext context) {
    return const WidgetsView(Typography(children: [
      H1('标题'),
      H1('Title - H1'),
      H2('Title - H2'),
      H3('Title - H3'),
      H4('Title - H4'),
      H5('Title - H5'),
      H6('Title - H6'),
      //////
      H1('文本 - Span'),
      Span('我能吞下玻璃而不伤身体。'),
      Span('The quick brown fox jumps over the lazy dog.'),
      //////
      H1('分割线 - Hr'),
      Hr(),
      Span('裂'),
      Hr(color: Colors.blue),
      Span('开'),
      Hr(color: Colors.yellow),
      Span('了'),
      Hr(color: Colors.white),
      //////
      H1('等宽字体文本 - Code'),
      Code('void main() => runApp(const ArknightsApp());'),
      //////
      H1('划删除线的文本 - Del'),
      Del('删除线'),
    ]));
  }
}
