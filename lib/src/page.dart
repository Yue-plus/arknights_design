import 'package:flutter/widgets.dart';

/// 最小路由实现
class ArknightsPageRoute<T> extends PageRoute<T> {
  late final WidgetBuilder _builder;

  ArknightsPageRoute({RouteSettings? settings, required WidgetBuilder builder})
      : _builder = builder;

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => 'barrierLabel';

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return _builder(context);
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 200);
}
