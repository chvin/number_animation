import 'package:flutter/material.dart';
import 'package:number_animation/number_animation.dart';

void main() {
  runApp(AppDemo());
}

class AppDemo extends StatefulWidget {
  @override
  _AppDemoState createState() => _AppDemoState();
}

class _AppDemoState extends State<AppDemo> {
  double number = 100;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'NumberAnimation Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('NumberAnimation Demo'),
            ),
            body: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        number = number - 10;
                      });
                    },
                    tooltip: 'reduction',
                    child: Icon(Icons.remove),
                  ),
                  NumberAnimation(
                    start: 0, // default is 0, can remove
                    end: number,
                    style: TextStyle(color: Colors.pinkAccent, fontSize: 30),
                    after: '%',
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        number = number + 10;
                      });
                    },
                    tooltip: 'Increment',
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            )));
  }
}
