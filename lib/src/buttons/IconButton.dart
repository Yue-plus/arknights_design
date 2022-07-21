import 'package:arknights_design/arknights_design.dart';

class IconButton extends StatefulWidget {
  const IconButton(this.iconData, {Key? key, this.onPressed}) : super(key: key);

  final IconData iconData;
  final VoidCallback? onPressed;

  @override
  State<StatefulWidget> createState() => IconButtonStatus();
}

class IconButtonStatus extends State<IconButton> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      onTapDown: (_) => setState(() => isActive = true),
      onTapUp: (_) => setState(() => isActive = false),
      child: AnimatedContainer(
        margin: const EdgeInsets.only(left: 8),
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        duration: const Duration(seconds: 1),
        child: Icon(
          widget.iconData,
          size: 36,
          color: !isActive ? ArknightsColors.white : ArknightsColors.gray,
          shadows: const [
            BoxShadow(
              color: ArknightsColors.gray,
              offset: Offset(0, 12),
              blurRadius: 3,
              // spreadRadius: 6,
            ),
          ],
        ),
      ),
    );
  }
}
