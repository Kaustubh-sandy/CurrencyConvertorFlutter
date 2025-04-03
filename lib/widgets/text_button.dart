import '../styles/stlyes.dart';
import 'package:flutter/material.dart';

class TextCusButton extends StatelessWidget {
  const TextCusButton({super.key, this.text = "", required this.func});

  final Function() func;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey.shade200),
      child: TextButton(
        onPressed: func,
        child: Text(
          text,
          style: sideTextstyle,
        ),
      ),
    );
  }
}
