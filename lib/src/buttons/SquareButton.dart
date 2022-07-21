import 'package:arknights_design/arknights_design.dart';

/// 方形按钮
class SquareButton extends StatefulWidget {
  const SquareButton({
    Key? key,
    this.icons,
    this.text = "",
    this.color = ArknightsColors.darkGrey,
    this.shadowColor = ArknightsColors.gray,
    this.width = 128,
    this.onPressed,
    this.onLongPressed,
  }) : super(key: key);

  final IconData? icons;
  final String text;
  final Color color;
  final Color shadowColor;
  final double? width;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPressed;

  @override
  State<StatefulWidget> createState() => _SquareButtonStatus();
}

class _SquareButtonStatus extends State<SquareButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      onLongPress: widget.onLongPressed,
      child: Container(
        width: widget.width,
        height: 42,
        decoration: BoxDecoration(
          color: widget.color,
          boxShadow: [
            BoxShadow(
              color: widget.shadowColor,
              offset: const Offset(2, 12),
              blurRadius: 8,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.icons != null)
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(widget.icons, color: ArknightsColors.white),
                ),
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
      ),
    );
  }
}
