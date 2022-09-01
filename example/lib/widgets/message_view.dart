import 'package:arknights_design/arknights_design.dart';
import 'package:arknights_design_demo/widgets/view.dart';

class WidgetsMessageView extends StatelessWidget {
  const WidgetsMessageView({Key? key}) : super(key: key);

  static const String routeName = '/widgets/message';

  @override
  Widget build(BuildContext context) {
    return WidgetsView(Typography(children: [
      const H1('全局通知'),
      Wrap(children: const [
        Message(icon: FluentIcons.info, message: '这是一条全局通知'),
        SizedBox(width: 32),
        Message(
          color: Colors.red,
          icon: FluentIcons.warning,
          message: '这是一条很长很长很长很长很长很长很长很长很长很长很长很长很长的全局通知',
        ),
        SizedBox(width: 32),
        Message(
          color: Colors.green,
          icon: FluentIcons.accept,
          message: '全局通知应控制在 20 个字符以内',
        ),
      ]),
    ]));
  }
}
