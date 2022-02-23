import 'package:flutter/widgets.dart';

import 'colors.dart';

/// [ArknightsApp] 使用这个 [TextStyle] 作为 [DefaultTextStyle]
/// 来鼓励开发者有意识地定义自己的 [DefaultTextStyle]。
///
/// 在明日方舟主题设计中，大多数 [Text] Widget 都包含在 [Arknights] Widget 中，
/// 它们预设了特定的 [DefaultTextStyle]。
/// 如果你看到使用此文本样式的文本，请考虑将文本放入 [Arknights] Widget 中
/// （或者另外声明一个 [DefaultTextStyle] Widget）。
const TextStyle _errorTextStyle = TextStyle(
  color: Color(0xD0FF0000),
  fontFamily: 'monospace',
  fontSize: 48.0,
  fontWeight: FontWeight.w900,
  decoration: TextDecoration.underline,
  decorationColor: Color(0xFFFFEE22),
  decorationStyle: TextDecorationStyle.double,
  debugLabel: '应急样式；考虑把你的文字放到一个明日方舟主题设计 Widget 里',
);

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
    List<NavigatorObserver> this.navigatorObservers = const <NavigatorObserver>[],
    this.builder,
    this.title = '',
    this.onGenerateTitle,
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

  /// {@macro flutter.widgets.widgetsApp.navigatorObservers}
  final List<NavigatorObserver>? navigatorObservers;

  /// {@macro flutter.widgets.widgetsApp.builder}
  final TransitionBuilder? builder;

  /// {@macro flutter.widgets.widgetsApp.title}
  ///
  /// 此值未经修改地传递给 [WidgetsApp.title].
  final String title;

  /// {@macro flutter.widgets.widgetsApp.onGenerateTitle}
  ///
  /// 此值未经修改地传递给 [WidgetsApp.onGenerateTitle].
  final GenerateAppTitle? onGenerateTitle;

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
      navigatorObservers: widget.navigatorObservers!,
      home: widget.home,
      routes: widget.routes!,
      initialRoute: widget.initialRoute,
      onGenerateRoute: widget.onGenerateRoute,
      onGenerateInitialRoutes: widget.onGenerateInitialRoutes,
      onUnknownRoute: widget.onUnknownRoute,
      builder: widget.builder,
      title: widget.title,
      onGenerateTitle: widget.onGenerateTitle,
      textStyle: _errorTextStyle,
      color: ArknightsColors.arkBlue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildWidgetApp(context);
  }
}
