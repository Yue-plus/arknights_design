import 'package:flutter/widgets.dart';
import 'colors.dart';

class ArknightsAppBar extends StatefulWidget {
  const ArknightsAppBar({Key? key, this.leading, this.title, this.actions})
      : super(key: key);

  final Widget? leading;

  final Widget? title;

  final List<Widget>? actions;

  final TextStyle appBarTextStyle = const TextStyle(
    color: ArknightsColors.blue,
    fontSize: 28,
  );

  @override
  State<StatefulWidget> createState() => _ArknightsAppBarState();
}

class _ArknightsAppBarState extends State<ArknightsAppBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: widget.appBarTextStyle,
      child: Row(
        children: [
          if (widget.leading != null) widget.leading!,
          if (widget.title != null) Expanded(child: widget.title!),
          if (widget.actions != null && widget.actions!.isNotEmpty)
            Row(children: widget.actions!),
        ],
      ),
    );
  }
}
