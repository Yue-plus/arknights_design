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
    return Center(
      child: Text(
        widget.title,
        textDirection: TextDirection.ltr,
        style: const TextStyle(
          color: ArknightsColors.arkBlue,
          fontSize: 32,
        ),
      ),
    );
  }
}
