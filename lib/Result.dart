import 'package:flutter/material.dart';
import './PrimeGen.dart';

class Result extends StatelessWidget {
  final numberLimit;
  final resetHandler;
  Result (this.numberLimit, this.resetHandler); 
  @override
  Widget build(BuildContext context) {
    var Primes =  PrimeGen(numberLimit).info;
    //print(Primes.list);
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Back"),
            onPressed: resetHandler,
          ),
          Text("The prime numbers between 1 - $numberLimit are listed below (total: ${Primes['count']}):",
              style: TextStyle(
                fontSize: 20,
              )),
          Expanded(
            child: ListView(
              children: <Widget>[
                ...(Primes['primeList'] as List<int>)
                    .map((i) => Container(
                          margin: EdgeInsets.symmetric(vertical: 1),
                          color: Colors.blue[200],
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          child: Text(i.toString(),
                              style: TextStyle(
                                color: Colors.black87,
                              )),
                        ))
                    .toList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
