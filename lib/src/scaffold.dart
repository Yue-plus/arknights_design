import 'package:flutter/widgets.dart';
import 'colors.dart';

enum _ArknightsPageScaffoldSlot { appbar, body }

class ArknightsPageScaffold extends StatefulWidget {
  const ArknightsPageScaffold({
    Key? key,
    this.appBar,
    this.body,
  }) : super(key: key);

  final Widget? appBar;

  final Widget? body;

  @override
  State<StatefulWidget> createState() => _ArknightsPageScaffoldStatus();
}

class _ArknightsPageScaffoldStatus extends State<ArknightsPageScaffold> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ArknightsColors.black,
      child: Column(children: [
        widget.appBar!,
        Expanded(child: widget.body!),
      ]),
    );
  }
}
