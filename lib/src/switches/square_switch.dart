import 'package:arknights_design/arknights_design.dart';

class SquareSwitch extends StatelessWidget {
  const SquareSwitch(
    this.state,
    this.onChange, {
    Key? key,
    this.width = 150,
    this.height = 50,
    this.onOpenText = '开启',
    this.onCloseText = '关闭',
  }) : super(key: key);

  final bool state;
  final ValueChanged<bool> onChange;
  final double width;
  final double height;
  final String onOpenText;
  final String onCloseText;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
      color: Colors.white,
      fontSize: height / 2,
      fontFamily: '黑体',
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.none,
    );

    return GestureDetector(
      onTap: () => onChange(!state),
      child: AnimatedContainer(
        width: width,
        height: height,
        duration: const Duration(milliseconds: 160),
        // padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: state ? Colors.blue : Colors.gray,
          // boxShadow: const [
          //   BoxShadow(color: ArknightsColors.black),
          //   BoxShadow(
          //     color: ArknightsColors.black,
          //     spreadRadius: -12,
          //     // offset: Offset(2, 12),
          //     blurRadius: 12,
          //   )
          // ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(onOpenText, style: textStyle),
                Text(onCloseText, style: textStyle),
              ],
            ),
            AnimatedPositioned(
              left: state ? width / 2 : 4,
              duration: const Duration(milliseconds: 160),
              child: Container(
                width: width / 2 - 4,
                height: height - 8,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
