import 'package:flutter/material.dart';
import 'package:popup_box/popup_box.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'PopupBox Package'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
            'To show a popup box,e click floating action button.'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await PopupBox.showPopupBox(
              context: context,
              willDisplayWidget: Container(
                child: Text('An example popup box text'),
              ));
        },
        tooltip: 'Show Popup Box Box',
        child: Icon(Icons.message),
      ),
    );
  }
}