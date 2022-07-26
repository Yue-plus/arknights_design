import 'package:arknights_design/arknights_design.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key, this.children}) : super(key: key);

  final List<SideBarItem>? children;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
      // height: 600,
      child: ListView(
        controller: ScrollController(),
        children: children ?? [],
      ),
    );
  }
}

class SideBarItem extends StatelessWidget {
  const SideBarItem({Key? key, this.icon, this.text, this.onTap}) : super(key: key);

  final IconData? icon;
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SquareButton(icons: icon, text: text ?? "", onPressed: onTap);
  }
}
