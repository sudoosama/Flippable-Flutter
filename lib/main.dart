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
            back: _buildBack(context),
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
              child: Image.asset(
                'images/rickandmorty.png',
                height: 300.0,
                width: 250.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildBack(context) {
  return Container(
    color: Colors.white,
    width: 350,
    height: 700,
    child: Stack(
      children: <Widget>[
        Image.asset(
          'images/rickandmortyeye.jpg',
          fit: BoxFit.fill,
        ),
        Positioned(
          top: 25,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff61688B),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  color: Color(0xffFFD073),
                  child: Text(
                    'New Episode',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2 + 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Season 4',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        ListTile(
                          contentPadding: EdgeInsets.all(0),
                          leading: Text(
                            "01",
                            style: TextStyle(
                              color: Color(0xffE4E7F4),
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          title: Text(
                            "Edge of Tomorty",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          subtitle: Text("2.33k Views"),
                          trailing: MaterialButton(
                            onPressed: () {},
                            color: Color(0xff182c47),
                            padding: EdgeInsets.all(7),
                            minWidth: 30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.arrow_right,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.all(0),
                          leading: Text(
                            "02",
                            style: TextStyle(
                              color: Color(0xffE4E7F4),
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          title: Text(
                            "The Old Man and the Seat",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          subtitle: Text("2.32k Views"),
                          trailing: MaterialButton(
                            onPressed: () {},
                            color: Color(0xff182c47),
                            padding: EdgeInsets.all(7),
                            minWidth: 30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.arrow_right,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.all(0),
                          leading: Text(
                            "03",
                            style: TextStyle(
                              color: Color(0xffE4E7F4),
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          title: Text(
                            "One Crew",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          subtitle: Text("2.34k Views"),
                          trailing: MaterialButton(
                            onPressed: () {},
                            color: Color(0xff182c47),
                            padding: EdgeInsets.all(7),
                            minWidth: 30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.arrow_right,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.all(0),
                          leading: Text(
                            "04",
                            style: TextStyle(
                              color: Color(0xffE4E7F4),
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          title: Text(
                            "Claws and Hoarder",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          subtitle: Text("2.43k Views"),
                          trailing: MaterialButton(
                            onPressed: () {},
                            color: Color(0xff182c47),
                            padding: EdgeInsets.all(7),
                            minWidth: 30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.arrow_right,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.all(0),
                          leading: Text(
                            "05",
                            style: TextStyle(
                              color: Color(0xffE4E7F4),
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          title: Text(
                            "Rattlestar Ricklactica",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          subtitle: Text("2.43k Views"),
                          trailing: MaterialButton(
                            onPressed: () {},
                            color: Color(0xff182c47),
                            padding: EdgeInsets.all(7),
                            minWidth: 30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.arrow_right,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),

      ],
    ),
  );
}