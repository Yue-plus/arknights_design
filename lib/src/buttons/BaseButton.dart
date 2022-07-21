import 'package:arknights_design/arknights_design.dart';

/// {@template fluent_ui.buttons.base}
/// 按钮为人们提供了一种触发动作的方式。它们通常出现在表单、对话框面板和对话框中。
/// {@end-template}
abstract class BaseButton extends StatefulWidget {
  const BaseButton({
    Key? key,
    this.onPressed,
    this.onLongPressed,
    this.onHover,
    required this.child,
  }) : super(key: key);


  final VoidCallback? onPressed;
  final VoidCallback? onLongPressed;

  final VoidCallback? onHover;
  final Widget child;

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