import 'package:flutter/material.dart';
import './Result.dart';
import './Question.dart';
/* -------------------------------------------------------------------------- */

void main() => runApp(MyApp());

/* -------------------------------------------------------------------------- */

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int numberLimit = 0;

  _reset() {
    setState(() {
      numberLimit = 0;
    });
  }
  _showResult(int n) {
    setState(() {
      numberLimit = n;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Prime Number Genarator",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Prime Number Genarator"),
        ),
        body: numberLimit == 0? Question(_showResult) : Result(numberLimit, _reset),
      ),
    );
  }
}


/* -------------------------------------------------------------------------- */