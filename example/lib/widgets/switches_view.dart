import 'package:arknights_design/arknights_design.dart';
import 'package:arknights_design_demo/widgets/view.dart';

class WidgetsSwitchView extends StatefulWidget {
  const WidgetsSwitchView({Key? key}) : super(key: key);

  static const String routeName = '/widgets/switch';

  @override
  State<StatefulWidget> createState() => _WidgetsSwitchViewState();
}

class _WidgetsSwitchViewState extends State<WidgetsSwitchView> {
  bool switchState = false;

  @override
  Widget build(BuildContext context) {
    return WidgetsView(Typography(children: [
      const H1('开关 - Switch'),
      const H2('SquareSwitch'),
      Row(children: [
        SquareSwitch(switchState, (v) => setState(() => switchState = v)),
      ]),
    ]));
  }
}