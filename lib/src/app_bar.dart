import 'package:arknights_design/arknights_design.dart';

class ArknightsAppBar extends StatefulWidget {
  const ArknightsAppBar({Key? key, this.leading, this.title, this.actions})
      : super(key: key);

  final Widget? leading;

  final Widget? title;

  final List<Widget>? actions;

  final TextStyle appBarTextStyle = const TextStyle(
    color: Colors.blue,
    fontSize: 28,
  );

  @override
  State<StatefulWidget> createState() => _ArknightsAppBarState();
}

class _ArknightsAppBarState extends State<ArknightsAppBar> {
  Widget leading(BuildContext context) {
    return widget.leading ??
        SquareButton(
          icons: FluentIcons.back,
          width: 128,
          onPressed: () => Navigator.pop(context),
        );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: widget.appBarTextStyle,
      child: Row(
        children: [
          leading(context),
          if (widget.title != null) Expanded(child: widget.title!),
          if (widget.actions != null && widget.actions!.isNotEmpty)
            Row(children: widget.actions!),
        ],
      ),
    );
  }
}

class ArknightsAppBarTitle extends StatelessWidget {
  const ArknightsAppBarTitle({Key? key, this.icon, this.title})
      : super(key: key);

  final IconData? icon;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        color: const Color(0xF1FFFFFF),
        child: Row(children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(icon, size: 32),
            ),
          if (title != null)
            Text(
              title!,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 32,
              ),
            ),
        ]),
      ),
    ]);
  }
}
