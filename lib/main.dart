import 'package:flippable_box/flippable_box.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlippableExample(),
    );
  }
}

class FlippableExample extends StatefulWidget {
  @override
  _FlippableExampleState createState() => _FlippableExampleState();
}

class _FlippableExampleState extends State<FlippableExample>
    with SingleTickerProviderStateMixin {
  bool _isFlipped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red.shade300,
        body: Center(

            child: GestureDetector(
              onTap: () => setState(() => _isFlipped = !_isFlipped),
              child: FlippableBox(
                front: _buildFront(),
                back: _buildBack("Back...", 350, 700, Colors.white),
                flipVt: false,
                isFlipped: _isFlipped,
              ),
            ),
          ),
        );
  }

  Widget _buildFront() {
    return Container(
      color: Colors.white,
      width: 350,
      height: 460,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: <Widget>[
            Align(
                alignment: Alignment(-0.92, 2.0),
                child: Text(
                  "Season 4",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.left,
                )),
            Align(
                alignment: Alignment(-0.75, 2.0),
                child: Text(
                  "Rick and Morty",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                )),

               Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('images/rickandmorty.png', height: 300.0,
                  width: 250.0,),
              ),

          ],
        ),
      ),
    );
  }
}

Widget _buildBack(String label, double width, double height, Color color) {
  return Container(
    color: color,
    width: width,
    height: height,
    child: Center(
      child: Text(label, style: TextStyle(fontSize: 32)),
    ),
  );
}
