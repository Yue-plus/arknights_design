import 'package:arknights_design/arknights_design.dart';

class IconButton extends StatefulWidget {
  const IconButton(this.iconData, {Key? key, this.size, this.color, this.onPressed}) : super(key: key);

  final IconData iconData;
  final double? size;
  final Color? color;
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
        padding: const EdgeInsets.all(8),
        duration: const Duration(seconds: 1),
        child: Icon(
          widget.iconData,
          size: widget.size ?? 36,
          color: !isActive ? Colors.white : Colors.lightGrey,
          shadows: const [
            BoxShadow(
              color: Colors.lightGrey,
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
