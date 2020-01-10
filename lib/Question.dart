import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final Function resultHandler;
  final options = [10, 100, 1000, 10000];

  Question(this.resultHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("Select an Range",
                style: TextStyle(
                  fontSize: 26,
                )),
            SizedBox(
              height: 30,
            ),
            ...options
                .map((option) => RaisedButton(
                      color: Colors.blue,
                      child: Text("1-$option",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      onPressed: () => resultHandler(option),
                    ))
                .toList(),
          ],
        ),
      ),
    );
  }
}
