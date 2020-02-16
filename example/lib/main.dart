import 'package:popup_box/popup_box.dart';

FloatingActionButton(
  onPressed: () async {
  await CustomAlertBox.showCustomAlertBox(
  context: context,
willDisplayWidget: Container(
child: Text('My custom alert box, used from example!!'),
));
},
tooltip: 'Show Custom Alert Box',
child: Icon(Icons.message),
)