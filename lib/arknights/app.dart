import 'package:flutter/widgets.dart';

import 'colors.dart';

/// 使用明日方舟为主题设计的应用程序。
///
/// 一个方便的小部件，它封装了明日方舟主题设计应用程序目标常用的小部件。
/// 基于 [WidgetsApp] 封装。
class ArknightsApp extends StatefulWidget {
  /// 创建一个 ArknightsApp。
  const ArknightsApp({
    Key? key,
    this.navigatorKey,
    this.home,
    Map<String, WidgetBuilder> this.routes = const <String, WidgetBuilder>{},
    this.initialRoute,
    this.onGenerateRoute,
    this.onGenerateInitialRoutes,
    this.onUnknownRoute,
    this.title = '',
  }) : super(key: key);

  /// {@macro flutter.widgets.widgetsApp.navigatorKey}
  final GlobalKey<NavigatorState>? navigatorKey;

  /// {@macro flutter.widgets.widgetsApp.home}
  final Widget? home;

  /// 应用的顶级路由表。
  ///
  /// 当使用 [Navigator.pushNamed] 转跳指定路由时，将在此 Map 中查找路由名称。
  /// 如果名称存在，则关联的 [widgets.WidgetBuilder] 用于构造 [ArknightsPageRoute]，
  /// 并执行适当的过渡（包括 [Hero] 动画），到新路由。
  ///
  /// {@macro flutter.widgets.widgetsApp.routes}
  final Map<String, WidgetBuilder>? routes;

  /// {@macro flutter.widgets.widgetsApp.initialRoute}
  final String? initialRoute;

  /// {@macro flutter.widgets.widgetsApp.onGenerateRoute}
  final RouteFactory? onGenerateRoute;

  /// {@macro flutter.widgets.widgetsApp.onGenerateInitialRoutes}
  final InitialRouteListFactory? onGenerateInitialRoutes;

  /// {@macro flutter.widgets.widgetsApp.onUnknownRoute}
  final RouteFactory? onUnknownRoute;

  /// {@macro flutter.widgets.widgetsApp.title}
  ///
  /// 此值未经修改地传递给 [WidgetsApp.title].
  final String title;

  @override
  State<StatefulWidget> createState() => _ArknightsAppState();
}

class _ArknightsAppState extends State<ArknightsApp> {
  @override
  void initState() {
    super.initState();
  }

  Widget _buildWidgetApp(BuildContext context) {
    return WidgetsApp(
      navigatorKey: widget.navigatorKey,
      home: widget.home,
      routes: widget.routes!,
      initialRoute: widget.initialRoute,
      onGenerateRoute: widget.onGenerateRoute,
      onGenerateInitialRoutes: widget.onGenerateInitialRoutes,
      onUnknownRoute: widget.onUnknownRoute,
      color: ArknightsColors.arkBlue,
      builder: (context, title) => Center(
        child: Text(
          widget.title,
          textDirection: TextDirection.ltr,
          style: const TextStyle(
            color: ArknightsColors.arkBlue,
            fontSize: 32,
          ),
        ),
      ),
      title: widget.title,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildWidgetApp(context);
  }
}
