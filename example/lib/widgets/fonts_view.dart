import 'package:arknights_design/arknights_design.dart';
import 'package:arknights_design_demo/widgets/view.dart';

class WidgetsFontsView extends StatelessWidget {
  const WidgetsFontsView({Key? key}) : super(key: key);

  static const String routeName = '/widgets/fonts';

  @override
  Widget build(BuildContext context) {
    return const WidgetsView(Typography(children: [
      H1('字体'),
    ]));
  }
}