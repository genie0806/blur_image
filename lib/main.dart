import 'package:flutter/material.dart';

void main() {
  runApp(const BlurTest());
}

class BlurTest extends StatelessWidget {
  const BlurTest({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('BlurTest'),
            ),
            body: Center(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                    0.1,
                    0.4,
                    0.6,
                    0.9,
                  ],
                  tileMode: TileMode.clamp,
                  colors: [
                    Colors.yellow,
                    Colors.red,
                    Colors.indigo,
                    Colors.teal,
                  ],
                )),
                child: Center(
                  child: Text(
                    'Hello Gradient!',
                    style: TextStyle(
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )));
  }
}
