import 'package:flutter/material.dart';

class display extends StatelessWidget {
  String txt;
  display(this.txt);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      width: 400,
      height: 200,
      alignment: Alignment.centerRight,
      color: Colors.black12,
      child: Text(
        txt,
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
    );
  }
}
