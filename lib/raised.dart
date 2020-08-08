import 'package:flutter/material.dart';

class Raised extends StatelessWidget {
  final Widget child;
  final Color color;
  Raised({this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
        color: (color != null) ? color : Color.fromRGBO(191, 191, 193, 1),
        border: Border(
          top: BorderSide(width: 1.8, color: Colors.white),
          left: BorderSide(width: 1.0, color: Colors.white),
          right: BorderSide(width: 1.8, color: Colors.black),
          bottom: BorderSide(width: 2.0, color: Colors.black),
        ),
      ),
    );
  }
}
