import 'package:flutter/material.dart';

class TextDesign extends StatelessWidget {
  const TextDesign({Key? key,required this.text,required this.fs,required this.fw,required this.clr}) : super(key: key);

  final String text;
  final FontWeight fw;
  final double fs;
  final Color clr;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      color: clr,
      fontWeight: fw,
      fontSize: fs,
    ),
    );
  }
}
