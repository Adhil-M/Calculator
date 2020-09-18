import 'package:calculator/display.dart';
import 'package:flutter/material.dart';
import './zbutton.dart';
import './numbutton.dart';
import './sbutton.dart';
import './ebutton.dart';

void main() {
  runApp(Calc());
}

class Calc extends StatefulWidget {
  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  var a = 0;
  var ans;
  String txt = '0';
  var b = 0;
  var sbl;
  var flag = 0;
  void equal() {
    switch (sbl) {
      case "+":
        {
          ans = a + b;
          setState(() {
            txt = "$ans";
          });
        }
        break;
      case "-":
        {
          ans = a - b;
          setState(() {
            txt = "$ans";
          });
        }
        break;
      case "x":
        {
          ans = a * b;
          setState(() {
            txt = "$ans";
          });
        }
        break;
      case "/":
        {
          ans = b != 0 ? a / b : 0;
          setState(() {
            txt = "$ans";
          });
        }
        break;
    }
  }

  void clear() {
    setState(() {
      a = 0;
      b = 0;
      flag = 0;
      txt = "0";
    });
  }

  void inputs(String inp) {
    setState(() {
      txt = txt + inp;
      flag = 1;
      sbl = inp;
    });
  }

  void input(int inp) {
    if (flag == 0) {
      setState(() {
        a = a * 10 + inp;
        txt = "$a";
      });
    } else {
      setState(() {
        b = b * 10 + inp;
        var c = b % 10;
        txt = txt + "$c";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black12,
            appBar: AppBar(
                backgroundColor: Colors.black54,
                title: Container(
                    width: double.infinity,
                    child: Text(
                      "CALCULATOR",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ))),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                display(txt),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Nbutton('1', input),
                    Nbutton("2", input),
                    Nbutton('3', input),
                    sbutton("+", inputs)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Nbutton('4', input),
                    Nbutton("5", input),
                    Nbutton('6', input),
                    sbutton('-', inputs)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Nbutton('7', input),
                    Nbutton("8", input),
                    Nbutton('9', input),
                    sbutton('x', inputs)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Zbutton('0', input, clear),
                    sbutton('/', inputs)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Ebutton('=', equal, clear),
                  ],
                ),
              ],
            )));
  }
}
