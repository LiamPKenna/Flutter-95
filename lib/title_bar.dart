import 'package:flutter/material.dart';
import 'package:flutter_95/widgets/inset.dart';
import 'package:flutter_95/widgets/raised.dart';

class TitleBar extends StatelessWidget {
  String title;
  bool close;
  bool minimize;
  bool maximize;
  double width;
  TitleBar({
    this.title,
    this.close = true,
    this.minimize = true,
    this.maximize = true,
    this.width = 150.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 35.0,
      color: Colors.blue,
      child: Row(children: <Widget>[
        Text(title), Expanded(child: Text('  ')),
      ],),
    );
  }
}
