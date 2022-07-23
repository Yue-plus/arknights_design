import 'package:arknights_design/arknights_design.dart';

enum _ArknightsPageScaffoldSlot { appbar, body }

class ArknightsPageScaffold extends StatefulWidget {
  const ArknightsPageScaffold({
    Key? key,
    this.appBar,
    this.body,
    this.appBackgroundImage,
  }) : super(key: key);

  final Widget? appBar;

  final Widget? body;

  final AssetImage? appBackgroundImage;

  @override
  State<StatefulWidget> createState() => _ArknightsPageScaffoldStatus();
}

class _ArknightsPageScaffoldStatus extends State<ArknightsPageScaffold> {
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
        color: ArknightsColors.black,
        image: appBackgroundImage,
      ),
      child: Column(children: [
        if (widget.appBar != null)
          Padding(
            padding: const EdgeInsets.all(8),
            child: widget.appBar!,
          ),
        if (widget.body != null) Expanded(child: widget.body!),
      ]),
    );
  }
}
