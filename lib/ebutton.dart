import 'package:flutter/material.dart';

class Ebutton extends StatelessWidget {
  final String num;
  final Function res;
  final Function clr;
  Ebutton(this.num, this.res, this.clr);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FlatButton(
          color: Colors.black26,
          textColor: Colors.white60,
          highlightColor: Colors.white10,
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 190),
          shape: StadiumBorder(
            side: BorderSide(
              color: Colors.black38,
            ),
          ),
          child: Text(
            num,
            style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
                color: Colors.yellow),
          ),
          onPressed: res,
          onLongPress: clr,
        ),
      ],
    );
  }
}
