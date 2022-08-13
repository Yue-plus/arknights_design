import 'package:arknights_design/arknights_design.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  static const routeName = '/settings';

  @override
  State<StatefulWidget> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingsView> {
  bool state = false;

  @override
  Widget build(BuildContext context) {
    return ArknightsPageScaffold(
      appBar: const ArknightsAppBar(
        title: ArknightsAppBarTitle(icon: FluentIcons.settings, title: '设置'),
      ),
      body: Column(children: [
        Row(children: [
          BaseSwitch(state, (v) => setState(() => state = v)),
        ]),
      ]),
    );
  }
}
