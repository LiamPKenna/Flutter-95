import 'package:flutter/material.dart';

class InsetGrey extends StatelessWidget {
  final Widget child;
    final Color color;
  InsetGrey({this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
        color: (color != null) ? color : Color.fromRGBO(191, 191, 193, 1),
        border: Border(
          top: BorderSide(width: 1.2, color: Colors.black),
          left: BorderSide(width: 1.3, color: Colors.black),
          right: BorderSide(width: 2.0, color: Colors.white),
          bottom: BorderSide(width: 2.0, color: Colors.white),
        ),
      ),
    );
  }
}
