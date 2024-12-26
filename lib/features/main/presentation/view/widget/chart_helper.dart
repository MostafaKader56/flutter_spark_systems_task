import 'package:flutter/material.dart';

class ChartHelper extends StatelessWidget {
  const ChartHelper({
    super.key,
    required this.color,
    required this.text,
  });

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 10,
            height: 10,
            color: color,
            margin: EdgeInsets.symmetric(horizontal: 2),
          ),
          Text(text),
        ],
      ),
    );
  }
}
