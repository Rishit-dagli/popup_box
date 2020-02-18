# popup_box Flutter
 
![Build](https://img.shields.io/badge/build-passing-brightgreen)
[![GitHub license](https://img.shields.io/github/license/Rishit-dagli/popup_box)](https://github.com/Rishit-dagli/popup_box/blob/master/LICENSE) 
[![Twitter](https://img.shields.io/twitter/url?style=social&url=https%3A%2F%2Fgithub.com%2FRishit-dagli%2Fpopup_box)](https://twitter.com/intent/tweet?text=Wow:&url=https%3A%2F%2Fgithub.com%2FRishit-dagli%2Fpopup_box)

## Table of Contents

1. [Importing the dependency](#importing-the-dependency)
2. [Parameters](#parameters)
3. [Making a button](#making-a-button)<br>
&nbsp;&nbsp;&nbsp;&nbsp;3.1 [Starter declaration](#starter-declaration) <br>
&nbsp;&nbsp;&nbsp;&nbsp;3.2 [Making the Text](#making-the-text) <br>
&nbsp;&nbsp;&nbsp;&nbsp;3.2 [Putting together the code](#putting-together-the-code) <br>

## Importing the dependency

* `pubsec.yaml`

```
dependencies:
 popup_box:
```

* `*.dart`

```
import 'package:popup_box/popup_box.dart';
```

## Parameters

* `@required BuildContext context`
* `@required Widget willDisplayWidget`
* `@required Widget button`

## Usage with an example

### Starter declaration

```
floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await PopupBox.showPopupBox()}
```

### Making a button

```
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
```

### Making the Text

```
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
```

### Putting together the code

```
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
        },)
```
