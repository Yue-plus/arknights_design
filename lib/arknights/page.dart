// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

import '../arknights.dart';

/// 以平台自适应转换取代整个屏幕的模态路由。
///
/// {@macro flutter.Arknights.ArknightsRouteTransitionMixin}
///
/// 默认情况下，当模态路由替换为另一个时，之前的路由仍保留在内存中。
/// 如果不需要释放所有资源，请将 [maintainState] 设为 false。
///
/// `fullscreenDialog` 属性指定传入的路由是否为全屏模式对话框。
/// 在 iOS 上，这些路由动画是从底部移动到顶部，而不是水平移动。
///
/// 类型 `T` 指定路由的返回类型，
/// 当路由通过 [Navigator.pop] 从堆栈中弹出时提供可选的 `result` 参数。
///
/// 另见：
///
///  * [ArknightsRouteTransitionMixin]：这为此路由提供了过渡动画。
///  * [ArknightsPage]：这是本类的 [Page]。
class ArknightsPageRoute<T> extends PageRoute
    with ArknightsRouteTransitionMixin {
  /// 构造一个 ArknightsPageRoute，其内容由 [Builder] 定义。
  //
  // [builder]、[maintainState] 与 [PageRoute.fullscreenDialog] 的值不得为 null。
  ArknightsPageRoute({
    required this.builder,
    RouteSettings? settings,
    this.maintainState = true,
    bool fullscreenDialog = false,
  }) : super(settings: settings, fullscreenDialog: fullscreenDialog) {
    assert(opaque);
  }

  /// 构建路由的主要内容。
  final WidgetBuilder builder;

  @override
  Widget buildContent(BuildContext context) => builder(context);

  @override
  final bool maintainState;

  @override
  String get debugLabel => '${super.debugLabel}(${settings.name})';
}

/// 为 [PageRoute] 提供平台自适应转换的 mixin。
///
/// {@template flutter.Arknights.ArknightsRouteTransitionMixin}
/// 对于 Android 平台，页面的入口过渡将路由向上滑动并淡入。退出过渡相同，但相反。
///
/// 过渡适应平台，在 iOS 上，路由从右侧滑入并反向退出。
/// 当另一页进入以覆盖它时，该路线也会以视差向左移动。
/// （这些方向在具有从右到左阅读方向的环境中翻转。）
/// {@endtemplate}
///
/// 另见：
///  * [PageTransitionsTheme]：
///    它定义了 [ArknightsRouteTransitionMixin.buildTransitions] 使用的默认页面过渡。
mixin ArknightsRouteTransitionMixin<T> on PageRoute<T> {
  /// 构建路由的主要内容。
  @protected
  Widget buildContent(BuildContext context);

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  bool canTransitionTo(TransitionRoute<dynamic> nextRoute) {
    // 如果下一个路由是全屏对话框，就不执行输出动画。
    return (nextRoute is ArknightsRouteTransitionMixin &&
            !nextRoute.fullscreenDialog) ||
        (nextRoute is CupertinoRouteTransitionMixin &&
            !nextRoute.fullscreenDialog);
  }

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    final Widget result = buildContent(context);
    assert(() {
      if (result == null) {
        throw FlutterError(
          'The builder for route "${settings.name}" returned null.\n'
          'Route builders must never return null.',
        );
      }
      return true;
    }());
    return Semantics(
      scopesRoute: true,
      explicitChildNodes: true,
      child: result,
    );
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    final PageTransitionsTheme theme = Theme.of(context).pageTransitionsTheme;
    return theme.buildTransitions<T>(
        this, context, animation, secondaryAnimation, child);
  }
}

/// A page that creates a Arknights style [PageRoute].
///
/// {@macro flutter.Arknights.ArknightsRouteTransitionMixin}
///
/// By default, when the created route is replaced by another, the previous
/// route remains in memory. To free all the resources when this is not
/// necessary, set [maintainState] to false.
///
/// The `fullscreenDialog` property specifies whether the created route is a
/// fullscreen modal dialog. On iOS, those routes animate from the bottom to the
/// top rather than horizontally.
///
/// The type `T` specifies the return type of the route which can be supplied as
/// the route is popped from the stack via [Navigator.transitionDelegate] by
/// providing the optional `result` argument to the
/// [RouteTransitionRecord.markForPop] in the [TransitionDelegate.resolve].
///
/// See also:
///
///  * [ArknightsPageRoute], which is the [PageRoute] version of this class
class ArknightsPage<T> extends Page<T> {
  /// 创建一个明日方舟主题设计页面。
  const ArknightsPage({
    required this.child,
    this.maintainState = true,
    this.fullscreenDialog = false,
    LocalKey? key,
    String? name,
    Object? arguments,
    String? restorationId,
  })  : super(
            key: key,
            name: name,
            arguments: arguments,
            restorationId: restorationId);

  /// The content to be shown in the [Route] created by this page.
  final Widget child;

  /// {@macro flutter.widgets.ModalRoute.maintainState}
  final bool maintainState;

  /// {@macro flutter.widgets.PageRoute.fullscreenDialog}
  final bool fullscreenDialog;

  @override
  Route<T> createRoute(BuildContext context) {
    return _PageBasedArknightsPageRoute<T>(page: this);
  }
}

// A page-based version of ArknightsPageRoute.
//
// This route uses the builder from the page to build its content. This ensures
// the content is up to date after page updates.
class _PageBasedArknightsPageRoute<T> extends PageRoute<T>
    with ArknightsRouteTransitionMixin<T> {
  _PageBasedArknightsPageRoute({
    required ArknightsPage<T> page,
  })  : super(settings: page) {
    assert(opaque);
  }

  ArknightsPage<T> get _page => settings as ArknightsPage<T>;

  @override
  Widget buildContent(BuildContext context) {
    return _page.child;
  }

  @override
  bool get maintainState => _page.maintainState;

  @override
  bool get fullscreenDialog => _page.fullscreenDialog;

  @override
  String get debugLabel => '${super.debugLabel}(${_page.name})';
}
