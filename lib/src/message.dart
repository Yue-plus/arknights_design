import 'package:arknights_design/arknights_design.dart';

/// 全局通知
class Message extends StatelessWidget {
  const Message({Key? key, this.icon, this.message, this.color})
      : super(key: key);

  final IconData? icon;
  final String? message;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      margin: const EdgeInsets.only(top: 32),
      padding: const EdgeInsets.all(16),
      color: Colors.black87,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            icon ?? FluentIcons.info,
            color: color ?? Colors.white,
            size: 50,
          ),
          const SizedBox(width: 16),
          Expanded(child: Center(child: Text(
            message ?? '',
            softWrap: true,
            overflow: TextOverflow.fade,
            maxLines: 3,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.normal,
              fontFamily: '微软雅黑',
              decoration: TextDecoration.none,
            ),
          ))),
        ],
      ),
    );
  }
}
