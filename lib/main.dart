import 'package:arknights_design/arknights_design.dart';

void main() {
  runApp(const ArknightsApp(
    title: 'Arknights Design',
    home: ArknightsPageScaffold(
      appBar: ArknightsAppBar(
        leading: Text('◬'),
        title: Text('Arknights Design'),
        actions: [
          Padding(padding: EdgeInsets.all(8), child: Text('▣')),
          Padding(padding: EdgeInsets.all(8), child: Text('◆')),
          Padding(padding: EdgeInsets.all(8), child: Text('▶')),
        ],
      ),
      body: Center(child: Text('Arknights Design')),
    ),
  ));
}
