import 'package:arknights_design/arknights_design.dart';
import 'package:arknights_design_demo/widgets/view.dart';

class WidgetsMessageView extends StatelessWidget {
  const WidgetsMessageView({Key? key}) : super(key: key);

  static const String routeName = '/widgets/message';

  @override
  Widget build(BuildContext context) {
    return const WidgetsView(Typography(children: [
      H1('全局通知'),
    ]));
  }
}