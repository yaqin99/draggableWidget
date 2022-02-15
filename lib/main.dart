import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.blue;
  Color color3 = Colors.green;
  Color color4 = Colors.yellow;

  bool isAccepted = false; //Cara membuat varianle Boolean
  Color targetColor = Colors.black12;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Dragable Widget"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Draggable<Color>(
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      elevation:
                          15, //Staidum border digunakan untuk membuat ujung dari container menjadi lengkung
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 80,
                    height: 80,
                    child: Material(
                      color: Colors.black12,
                      shape: StadiumBorder(),
                      elevation:
                          0, //Staidum border digunakan untuk membuat ujung dari container menjadi lengkung
                    ),
                  ),
                  feedback: SizedBox(
                    width: 80,
                    height: 80,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      elevation:
                          15, //Staidum border digunakan untuk membuat ujung dari container menjadi lengkung
                    ),
                  ),
                ),
                Draggable<Color>(
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: Material(
                      color: color4,
                      shape: StadiumBorder(),
                      elevation:
                          15, //Staidum border digunakan untuk membuat ujung dari container menjadi lengkung
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 80,
                    height: 80,
                    child: Material(
                      color: Colors.black12,
                      shape: StadiumBorder(),
                      elevation:
                          0, //Staidum border digunakan untuk membuat ujung dari container menjadi lengkung
                    ),
                  ),
                  feedback: SizedBox(
                    width: 80,
                    height: 80,
                    child: Material(
                      color: color4,
                      shape: StadiumBorder(),
                      elevation:
                          15, //Staidum border digunakan untuk membuat ujung dari container menjadi lengkung
                    ),
                  ),
                ),
                Draggable<Color>(
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation:
                          15, //Staidum border digunakan untuk membuat ujung dari container menjadi lengkung
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 80,
                    height: 80,
                    child: Material(
                      color: Colors.black12,
                      shape: StadiumBorder(),
                      elevation:
                          0, //Staidum border digunakan untuk membuat ujung dari container menjadi lengkung
                    ),
                  ),
                  feedback: SizedBox(
                    width: 80,
                    height: 80,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation:
                          15, //Staidum border digunakan untuk membuat ujung dari container menjadi lengkung
                    ),
                  ),
                ),
                Draggable<Color>(
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: Material(
                      color: color3,
                      shape: StadiumBorder(),
                      elevation:
                          15, //Staidum border digunakan untuk membuat ujung dari container menjadi lengkung
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 80,
                    height: 80,
                    child: Material(
                      color: Colors.black12,
                      shape: StadiumBorder(),
                      elevation:
                          0, //Staidum border digunakan untuk membuat ujung dari container menjadi lengkung
                    ),
                  ),
                  feedback: SizedBox(
                    width: 80,
                    height: 80,
                    child: Material(
                      color: color3,
                      shape: StadiumBorder(),
                      elevation:
                          15, //Staidum border digunakan untuk membuat ujung dari container menjadi lengkung
                    ),
                  ),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) => {isAccepted = true, targetColor = value},
              builder: (context, candidates, rejected) {
                return (isAccepted)
                    ? SizedBox(
                        width: 150,
                        height: 150,
                        child: Material(
                          color: targetColor,
                          shape: StadiumBorder(),
                          elevation:
                              15, //Staidum border digunakan untuk membuat ujung dari container menjadi lengkung
                        ),
                      )
                    : SizedBox(
                        width: 150,
                        height: 150,
                        child: Material(
                          color: Colors.black12,
                          shape: StadiumBorder(),
                          elevation:
                              0, //Staidum border digunakan untuk membuat ujung dari container menjadi lengkung
                        ),
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}
