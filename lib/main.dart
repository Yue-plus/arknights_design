import 'package:arknights_design/arknights.dart';

void main() {
  runApp(
    const ArknightsApp(
      title: "Arknights Design",
      home: Center(
        child: Text(
          'Arknights Design',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: ArknightsColors.arkBlue,
            fontSize: 32,
          ),
        ),
      ),
    ),
  );
}
