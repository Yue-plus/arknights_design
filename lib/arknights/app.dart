import 'package:flutter/widgets.dart';

import 'colors.dart';
import 'page.dart';
// import 'theme.dart';

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

/// 描述用户将使用的主题 [ArknightsApp]。
enum ThemeMode {
  /// 根据用户在系统设置中的选择，使用“亮”或“暗”主题。
  system,

  /// 无论系统设置如何，始终使用亮主题。
  light,

  /// 无论系统设置如何，始终使用暗模式（如果可用）。
  dark,
}

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
    List<NavigatorObserver> this.navigatorObservers =
        const <NavigatorObserver>[],
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.color,
    // TODO: 自定义主题
    // this.theme,
    // this.darkTheme,
    // this.highContrastTheme,
    // this.highContrastDarkTheme,
    // this.themeMode = ThemeMode.system,
    this.locale,
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

  /// 此应用的明日方舟主题设计 Widget 的默认视觉属性，如：颜色、字体与形状。
  ///
  /// 还可以指定次要的 [darkTheme] [ThemeData] 值，用于提供用户界面的暗色主题。
  /// [themeMode] 将控制在提供 [darkTheme] 的情况下使用哪个主题。
  ///
  /// 此属性的默认值是 [ThemeData.light()] 的值。
  ///
  /// 另见：
  ///
  ///  * [themeMode]：控制要使用的主题。
  ///  * [MediaQueryData.platformBrightness]：指示平台所需的主题，
  ///    用于在 [ArknightsApp] 中自动在 [theme] 与 [darkTheme] 之间切换。
  ///  * [ThemeData.brightness]：表示主题颜色的 [Brightness]
  // TODO ThemeData
  // final ThemeData? theme;

  /// {@macro flutter.widgets.widgetsApp.color}
  final Color? color;

  /// {@macro flutter.widgets.widgetsApp.locale}
  final Locale? locale;

  @override
  State<StatefulWidget> createState() => _ArknightsAppState();
}

class _ArknightsAppState extends State<ArknightsApp> {
  @override
  void initState() {
    super.initState();
  }

  Widget _buildWidgetApp(BuildContext context) {
    // color 属性总是从 light 主题中提取，即使暗色模式被激活。
    // 这样做是为了简化切换主题的技术细节，它被认为是可以接受的，
    // 因为这个颜色属性只在旧版 Android 系统上用于在 Android 的切换 UI 中为 appbar 着色。
    //
    // 方舟蓝（0xff22bbff）为默认主题的主要颜色。
    final Color arknightsColor = widget.color ?? ArknightsColors.arkBlue;

    return WidgetsApp(
      navigatorKey: widget.navigatorKey,
      navigatorObservers: widget.navigatorObservers!,
      // TODO ArknightsPageRoute<T>
      // pageRouteBuilder: <T>(RouteSettings settings, WidgetBuilder builder) {
      //   return ArknightsPageRoute<T>(settings: settings, builder: builder);
      // },
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
      color: arknightsColor,
      locale: widget.locale,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildWidgetApp(context);
  }
}
