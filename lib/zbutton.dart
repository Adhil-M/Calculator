import 'package:flutter/material.dart';

class Zbutton extends StatelessWidget {
  final String num;
  final Function ip;
  final Function clr;
  Zbutton(this.num, this.ip, this.clr);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FlatButton(
          color: Colors.black26,
          textColor: Colors.white60,
          highlightColor: Colors.white10,
          padding: EdgeInsets.symmetric(vertical: 23, horizontal: 143),
          shape: StadiumBorder(
            side: BorderSide(
              color: Colors.black38,
            ),
          ),
          child: Text(
            num,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          onPressed: () => ip(0),
          onLongPress: clr,
        ),
      ],
    );
  }
}
