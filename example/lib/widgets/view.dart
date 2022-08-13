import 'package:arknights_design/arknights_design.dart';
import 'package:arknights_design_demo/widgets/buttons_view.dart';
import 'package:arknights_design_demo/widgets/colors_view.dart';
import 'package:arknights_design_demo/widgets/fonts_view.dart';
import 'package:arknights_design_demo/widgets/message_view.dart';
import 'package:arknights_design_demo/widgets/switches_view.dart';
import 'package:arknights_design_demo/widgets/typography_view.dart';

class WidgetsView extends StatefulWidget {
  const WidgetsView(this.body, {Key? key}) : super(key: key);

  static const String routeName = '/widgets';

  final Widget body;

  @override
  State<StatefulWidget> createState() => _WidgetsViewState();
}

class _WidgetsViewState extends State<WidgetsView> {
  @override
  Widget build(BuildContext context) {
    return ArknightsPageScaffold(
      appBar: ArknightsAppBar(
        leading: Row(children: [
          SquareButton(
            icons: FluentIcons.back,
            width: 128,
            onPressed: () => Navigator.pop(context),
          ),
          SquareButton(
            icons: FluentIcons.collapse_menu,
            width: 128,
            onPressed: () {},
          )
        ]),
        title: const ArknightsAppBarTitle(
          icon: FluentIcons.toolbox,
          title: 'Widget',
        ),
      ),
      sideBar: SideBar(
        children: [
          SideBarItem(
            icon: FluentIcons.button_control,
            text: '按钮',
            onTap: () => Navigator.pushReplacementNamed(
                context, WidgetsButtonsView.routeName),
          ),
          SideBarItem(
            icon: FluentIcons.switch_widget,
            text: '开关',
            onTap: () => Navigator.pushReplacementNamed(
                context, WidgetsSwitchView.routeName),
          ),
          SideBarItem(
            icon: FluentIcons.message,
            text: '全局通知',
            onTap: () => Navigator.pushReplacementNamed(
                context, WidgetsMessageView.routeName),
          ),
          SideBarItem(
            icon: FluentIcons.font,
            text: '字体',
            onTap: () => Navigator.pushReplacementNamed(
                context, WidgetsFontsView.routeName),
          ),
          SideBarItem(
            icon: FluentIcons.page,
            text: 'Typography',
            onTap: () => Navigator.pushReplacementNamed(
                context, WidgetsTypographyView.routeName),
          ),
          SideBarItem(
            icon: FluentIcons.color,
            text: '颜色',
            onTap: () => Navigator.pushReplacementNamed(
                context, WidgetsColorsView.routeName),
          )
        ],
      ),
      body: widget.body,
    );
  }
}
