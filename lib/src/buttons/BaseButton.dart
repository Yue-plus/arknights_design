import 'package:arknights_design/arknights_design.dart';

/// 其他按钮的基类，不应当直接调用。
class BaseButton extends StatefulWidget {
  const BaseButton({
    Key? key,
    required this.child,
    this.onPressed,
    this.onLongPressed,
    this.onHover,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPressed;
  final VoidCallback? onHover;

  @override
  State<StatefulWidget> createState() => _BaseButtonState();
}

class _BaseButtonState extends State<BaseButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      onLongPress: widget.onLongPressed,
      // onForcePressStart: (_) => widget.onHover,
      child: widget.child,
    );
  }
}