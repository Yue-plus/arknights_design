import 'package:arknights_design/arknights_design.dart';
import 'package:arknights_design_demo/widgets/view.dart';

class WidgetsButtonsView extends StatelessWidget {
  const WidgetsButtonsView({Key? key}) : super(key: key);

  static const String routeName = '/widgets/buttons';

  @override
  Widget build(BuildContext context) {
    return WidgetsView(Typography(children: [
      const H1('按钮'),
      const SizedBox(height: 32),
      const H2('方型按钮 - SquareButton'),
      Row(children: const [
        SquareButton(width: 128),
        SquareButton(icons: FluentIcons.app_icon_default),
        SquareButton(text: 'SquareButton'),
        SquareButton(
          width: null,
          icons: FluentIcons.app_icon_default,
          text: 'SquareButton',
        ),
      ]),
      const SizedBox(height: 64),
      const H2('图标按钮 - IconButton'),
      const H3('ArknightsIcons'),
      Row(children: const [
        IconButton(ArknightsIcons.medic),
        IconButton(ArknightsIcons.warrior),
        IconButton(ArknightsIcons.support),
        IconButton(ArknightsIcons.tank),
        IconButton(ArknightsIcons.sniper),
        IconButton(ArknightsIcons.pioneer),
        IconButton(ArknightsIcons.special),
        IconButton(ArknightsIcons.caster),
      ]),
      const H3('FluentIcons'),
      Row(children: const [
        IconButton(FluentIcons.home_solid),
        IconButton(FluentIcons.settings),
        IconButton(FluentIcons.more),
      ]),
      const H3('MaterialIcons'),
      Row(children: const [
        IconButton(Icons.home),
        IconButton(Icons.settings),
        IconButton(Icons.more),
      ]),
      const H3('CupertinoIcons'),
      Row(children: const [
        IconButton(CupertinoIcons.home),
        IconButton(CupertinoIcons.settings_solid),
        IconButton(CupertinoIcons.alt),
      ]),
    ]));
  }
}