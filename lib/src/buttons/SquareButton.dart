import 'package:arknights_design/arknights_design.dart';

/// 方形按钮
class SquareButton extends StatefulWidget {
  const SquareButton({
    Key? key,
    this.icons,
    this.text = "",
    this.color = ArknightsColors.darkGrey,
    this.shadowColor = ArknightsColors.gray,
    this.boxShadow,
    this.width = 128,
    this.onPressed,
    this.onLongPressed,
  }) : super(key: key);

  final IconData? icons;
  final String text;
  final Color color;
  final Color shadowColor;
  final List<BoxShadow>? boxShadow;
  final double? width;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPressed;

  @override
  State<StatefulWidget> createState() => _SquareButtonStatus();
}

class _SquareButtonStatus extends State<SquareButton> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      onLongPress: widget.onLongPressed,
      onTapDown: (_) => setState(() => isActive = true),
      onTapUp: (_) => setState(() => isActive = false),
      child: AnimatedContainer(
        width: widget.width,
        height: 42,
        // margin: const EdgeInsetsGeometryTween(),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: !isActive ? widget.color : ArknightsColors.gray,
          boxShadow: widget.boxShadow ?? [
            BoxShadow(
              color: !isActive ? widget.shadowColor : ArknightsColors.white,
              offset: const Offset(2, 12),
              blurRadius: 8,
            ),
          ],
        ),
        duration: const Duration(milliseconds: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.icons != null)
              Icon(widget.icons, color: ArknightsColors.white),
            if (widget.text != "")
              Text(
                widget.text,
                style: const TextStyle(
                  color: ArknightsColors.white,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class SquareButtonsGroup extends StatefulWidget {
  const SquareButtonsGroup({Key? key, required this.children}) : super(key: key);

  final List<SquareButton> children;

  @override
  State<StatefulWidget> createState() => _SquareButtonsGroupStatus();
}

class _SquareButtonsGroupStatus extends State<SquareButtonsGroup> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      widget.children.first,
    ]);
  }
}
