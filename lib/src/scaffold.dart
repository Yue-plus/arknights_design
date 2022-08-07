import 'package:arknights_design/arknights_design.dart';

enum _ArknightsPageScaffoldSlot { appbar, body }

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
        color: Colors.black,
        image: appBackgroundImage,
      ),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: widget.appBar ?? const ArknightsAppBar(),
        ),
        Expanded(child: Row(
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
