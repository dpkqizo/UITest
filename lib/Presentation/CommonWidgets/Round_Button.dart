import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  double button_height;
  Color button_Color;
  Color button_border_Color;
  Color title_Color;
  String title;
  double textFontSize;
  FontWeight? fontWeight;
  Function()? onPresse;
  double? radious;

  RoundButton(
      {this.button_height = 50,
      required this.button_Color,
      required this.button_border_Color,
      this.title = "",
      this.onPresse,
      required this.title_Color,
      this.textFontSize = 20,
      this.fontWeight,
      this.radious});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: button_height,
      child: ElevatedButton(
          onPressed: onPresse,
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(button_Color),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radious ?? 19.0),
                      side: BorderSide(color: button_border_Color)))),
          child: Center(
              child: Text(
            title,
            style: TextStyle(
                color: title_Color,
                fontSize: textFontSize,
                fontWeight: fontWeight),
          ))),
    );
  }
}
