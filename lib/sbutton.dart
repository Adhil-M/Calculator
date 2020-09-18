import 'package:flutter/material.dart';

class sbutton extends StatelessWidget {
  final String num;
  final Function sym;
  sbutton(this.num, this.sym);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.black26,
      textColor: Colors.white60,
      highlightColor: Colors.white10,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      shape: StadiumBorder(
        side: BorderSide(
          color: Colors.black38,
        ),
      ),
      child: Text(
        num,
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.brown),
      ),
      onPressed: () => sym(num),
    );
  }
}
