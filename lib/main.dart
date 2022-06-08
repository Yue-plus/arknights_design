import 'package:arknights_design/arknights_design.dart';

void main() {
  runApp(const ArknightsApp(
    title: 'Arknights Design',
    home: ArknightsPageScaffold(
      appBar: SizedBox(child: Text('AppBar')),
      body: Center(child: Text('Arknights Design')),
    ),
  ));
}
