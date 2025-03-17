import 'package:flutter/material.dart';

class VerticaldividerCustom extends StatelessWidget {
  double height;
  double width;
  double thickness;
  Color color;

  VerticaldividerCustom({
    this.height = 30,
    this.width = 0.5,
    this.thickness = 1,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: VerticalDivider(
        color: color,
        thickness: thickness,
        width: width,
      ),
    );
  }
}
