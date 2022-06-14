import 'package:arknights_design/arknights_design.dart';
import 'package:fluent_ui/fluent_ui.dart' show FluentIcons;

class DemoApp extends StatelessWidget {
  const DemoApp({Key? key}) : super(key: key);

  Widget _rowIcon(IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Icon(icon, size: 64, color: ArknightsColors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ArknightsApp(
      title: 'Arknights Design',
      home: ArknightsPageScaffold(
        appBar: const ArknightsAppBar(
          leading: Icon(FluentIcons.add, color: ArknightsColors.white),
          title: Text('Arknights AppBar Title'),
          actions: [
            Icon(FluentIcons.plug_connected, color: ArknightsColors.white),
            Icon(FluentIcons.pill, color: ArknightsColors.white),
            Icon(FluentIcons.release_gate, color: ArknightsColors.white),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Arknights Design',
              style: TextStyle(
                color: ArknightsColors.white,
                fontSize: 64,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _rowIcon(ArknightsIcons.caster),
                _rowIcon(ArknightsIcons.medic),
                _rowIcon(ArknightsIcons.pioneer),
                _rowIcon(ArknightsIcons.sniper),
                _rowIcon(ArknightsIcons.special),
                _rowIcon(ArknightsIcons.support),
                _rowIcon(ArknightsIcons.tank),
                _rowIcon(ArknightsIcons.warrior),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void main() => runApp(const DemoApp());
