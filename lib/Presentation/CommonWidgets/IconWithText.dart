import 'package:flutter/cupertino.dart';
import 'package:interview_ui/Core/Apptheme/Apptheme.dart';

class Iconwithtext extends StatelessWidget {
  IconData icon;
  String title;
  bool isSelected;

  Iconwithtext(
      {required this.icon, required this.title, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: isSelected ? Apptheme().color_blue : Apptheme().color_white,
          size: 35,
        ),
        Text(
          title,
          style: TextStyle(
              color:
                  isSelected ? Apptheme().color_blue : Apptheme().color_white,
              fontSize: Apptheme().size_SubHeadinge,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
