import 'package:arknights_design/arknights_design.dart';

class BaseSwitch extends StatelessWidget {
  const BaseSwitch(this.state, this.onChange, {Key? key}) : super(key: key);

  final bool state;
  final ValueChanged<bool> onChange;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChange(!state),
      child: Container(
        color: Color(state ? 0xFF00FF00 : 0xFFFF0000),
        child: Text(state ? 'Open' : 'Close'),
      ),
    );
  }
}