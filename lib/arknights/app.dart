import 'package:flutter/widgets.dart';

/// 使用明日方舟为主题设计的应用程序。
class ArknightsApp extends StatefulWidget {
  /// 创建一个 ArknightsApp。
  const ArknightsApp({
    Key? key,
    this.title = '',
  }) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}