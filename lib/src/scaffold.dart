import 'dart:async';

import 'package:arknights_design/arknights_design.dart';

enum _ArknightsPageScaffoldSlot { appBar, sideBar, body, messageBar }

/// 用于管理 [Message]。
class ScaffoldMessenger extends StatefulWidget {
  const ScaffoldMessenger({Key? key}) : super(key: key);

  /// 包含给定上下文的此类最近实例的状态。
  ///
  /// 另见：
  /// * [maybeOf] 一个类似的函数，但如果没有父 [ScaffoldMessenger]，
  ///   将返回 null 而不是抛出异常。
  static ScaffoldMessengerState of(BuildContext context) {
    final _ScaffoldMessengerScope scope =
        context.dependOnInheritedWidgetOfExactType<_ScaffoldMessengerScope>()!;
    return scope._scaffoldMessengerState;
  }

  /// 包含给定上下文的此类最近实例的状态（如果有）。
  /// 如果在给定上下文中找不到 [ScaffoldMessenger] ，将返回 null。
  ///
  /// 另见：
  /// * [of] 一个类似的函数，但如果在给定 [context] 上找不到 [ScaffoldMessenger]，
  ///   将抛出异常。
  static ScaffoldMessengerState? maybeOf(BuildContext context) {
    final _ScaffoldMessengerScope? scope =
        context.dependOnInheritedWidgetOfExactType<_ScaffoldMessengerScope>();
    return scope?._scaffoldMessengerState;
  }

  @override
  State<StatefulWidget> createState() => ScaffoldMessengerState();
}

/// [ScaffoldMessenger] 的状态。
///
/// [ScaffoldMessengerState] 对象可用于为每个已注册的作为关联 [ScaffoldMessenger]
/// 后代的 [Scaffold] 的 [showSnackBar] 或 [showMaterialBanner]。
/// [Scaffolds] 将注册以接收来自其最近的 [ScaffoldMessenger] 祖先的
/// [SnackBar] 和 [MaterialBanner]。
///
// 通常通过 [ScaffoldMessenger.of] 获得。
class ScaffoldMessengerState extends State<ScaffoldMessenger>
    with TickerProviderStateMixin {
  sendMessage(Message message) {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _ScaffoldMessengerScope extends InheritedWidget {
  const _ScaffoldMessengerScope({
    Key? key,
    required Widget child,
    required ScaffoldMessengerState scaffoldMessengerState,
  })  : _scaffoldMessengerState = scaffoldMessengerState,
        super(key: key, child: child);

  final ScaffoldMessengerState _scaffoldMessengerState;

  /// 框架是否应通知从该 Widget 继承的 Widget。
  ///
  /// 当这个 Widget 被重建时，可能需要重建从这个 Widget 继承的 Widget。
  /// 例如：如果该 Widget 持有的数据与 `oldWidget` 持有的数据相同，
  /// 那就不需要重建继承了 `oldWidget` 持有的数据的 Widget。
  ///
  /// 框架通过使用先前在树中占据该位置的小部件作为参数调用此函数来区分这些情况。
  /// 给定的小部件保证与此对象具有相同的 [runtimeType]。
  @override
  bool updateShouldNotify(_ScaffoldMessengerScope old) =>
      _scaffoldMessengerState != old._scaffoldMessengerState;
}

/// 实现了 ArknightsDesign 的基本布局。
class ArknightsPageScaffold extends StatefulWidget {
  const ArknightsPageScaffold({
    Key? key,
    this.appBar,
    this.sideBar,
    this.body,
    this.appBackgroundImage,
  }) : super(key: key);

  final Widget? appBar;

  final Widget? sideBar;

  final Widget? body;

  final AssetImage? appBackgroundImage;

  @override
  State<StatefulWidget> createState() => _ArknightsPageScaffoldState();
}

class _ArknightsPageScaffoldState extends State<ArknightsPageScaffold> {
  @override
  Widget build(BuildContext context) {
    DecorationImage? appBackgroundImage = const DecorationImage(
      image: AssetImage(
        'assets/background.jpg',
        package: 'arknights_design',
      ),
      fit: BoxFit.cover,
    );

    if (widget.appBackgroundImage != null) {
      appBackgroundImage = DecorationImage(
        image: widget.appBackgroundImage!,
        fit: BoxFit.cover,
      );
    }

    return Container(
      // color: ArknightsColors.black,
      decoration: BoxDecoration(
        color: Colors.black,
        image: appBackgroundImage,
      ),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: widget.appBar ?? const ArknightsAppBar(),
        ),
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.sideBar != null) widget.sideBar!,
            if (widget.body != null) Expanded(child: widget.body!),
          ],
        )),
      ]),
    );
  }
}

/// 用于控制 [Scaffold] 功能的接口。
///
/// 通常从 [ScaffoldMessengerState.sendMessage] 获得。
class ScaffoldFeatureController<T extends Widget, U> {
  const ScaffoldFeatureController._(
      this._widget, this._completer, this.close, this.setState);

  final T _widget;
  final Completer<U> _completer;

  /// 当此对象控制的功能不再可见时完成。
  Future<U> get closed => _completer.future;

  /// 从 [Scaffold] 上移除特征。
  final VoidCallback close;

  /// 将特征标记为需要重建。
  final StateSetter? setState;
}
