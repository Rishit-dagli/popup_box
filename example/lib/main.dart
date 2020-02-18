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
          'To show a popup box, click the floating action button.',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await PopupBox.showPopupBox(
              context: context,
              button: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.blue,
                child: Text(
                  'Ok',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              willDisplayWidget: Column(
                children: <Widget>[
                  Text(
                    'Hi',
                    style: TextStyle(fontSize: 40, color: Colors.black),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ));
        },
        tooltip: 'Show Popup Box',
        child: Icon(Icons.message),
      ),
    );
  }
}
