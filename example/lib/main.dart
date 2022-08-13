import 'package:arknights_design/arknights_design.dart';
import 'package:arknights_design_demo/settings/view.dart';
import 'package:arknights_design_demo/design/view.dart';
import 'package:arknights_design_demo/docs/view.dart';
import 'package:arknights_design_demo/widgets/buttons_view.dart';
import 'package:arknights_design_demo/widgets/colors_view.dart';
import 'package:arknights_design_demo/widgets/fonts_view.dart';
import 'package:arknights_design_demo/widgets/message_view.dart';
import 'package:arknights_design_demo/widgets/switches_view.dart';
import 'package:arknights_design_demo/widgets/typography_view.dart';
import 'package:arknights_design_demo/widgets/view.dart';
import 'package:url_launcher/url_launcher.dart';

class DemoApp extends StatelessWidget {
  const DemoApp({Key? key}) : super(key: key);

  static const routeName = '/';

  Widget _body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Arknights Design',
          style: TextStyle(
            color: Colors.white,
            fontSize: 64,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
        ),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            IconButton(ArknightsIcons.medic, size: 64),
            IconButton(ArknightsIcons.warrior, size: 64),
            IconButton(ArknightsIcons.support, size: 64),
            IconButton(ArknightsIcons.tank, size: 64),
            IconButton(ArknightsIcons.sniper, size: 64),
            IconButton(ArknightsIcons.pioneer, size: 64),
            IconButton(ArknightsIcons.special, size: 64),
            IconButton(ArknightsIcons.caster, size: 64),
          ],
        ),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SquareButton(
              text: '设计',
              width: 128,
              onPressed: () =>
                  Navigator.pushNamed(context, DesignView.routeName),
            ),
            SquareButton(
              text: '文档',
              width: 128,
              onPressed: () => Navigator.pushNamed(context, DocsView.routeName),
            ),
            SquareButton(
              text: 'Widget',
              width: 128,
              onPressed: () =>
                  Navigator.pushNamed(context, WidgetsView.routeName),
            ),
          ],
        )
      ],
    );
  }

  Widget _appBar(BuildContext context) {
    return ArknightsAppBar(
      leading: Row(children: [
        IconButton(
          FluentIcons.settings,
          onPressed: () => Navigator.pushNamed(context, SettingsView.routeName),
        ),
        IconButton(
          FluentIcons.git_graph,
          onPressed: () => launchUrl(
              Uri.parse('https://github.com/Yue-plus/arknights_design')),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ArknightsApp(
      title: 'Arknights Design',
      initialRoute: WidgetsMessageView.routeName,
      routes: {
        DemoApp.routeName: (context) => ArknightsPageScaffold(
            appBar: _appBar(context), body: _body(context)),
        SettingsView.routeName: (context) => const SettingsView(),
        DesignView.routeName: (context) => const DesignView(),
        DocsView.routeName: (context) => const DocsView(),
        WidgetsView.routeName: (context) => const WidgetsButtonsView(),
        WidgetsButtonsView.routeName: (context) => const WidgetsButtonsView(),
        WidgetsSwitchView.routeName: (context) => const WidgetsSwitchView(),
        WidgetsFontsView.routeName: (context) => const WidgetsFontsView(),
        WidgetsMessageView.routeName: (context) => const WidgetsMessageView(),
        WidgetsTypographyView.routeName: (context) =>
            const WidgetsTypographyView(),
        WidgetsColorsView.routeName: (context) => const WidgetsColorsView(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

void main() => runApp(const DemoApp());
