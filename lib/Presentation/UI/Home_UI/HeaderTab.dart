import 'package:flutter/cupertino.dart';
import 'package:interview_ui/Core/Apptheme/Apptheme.dart';
import 'package:interview_ui/Presentation/CommonWidgets/Round_Button.dart';

class Headertab extends StatelessWidget {
  const Headertab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          CustomButton("Profile", isSelected: true),
          CustomButton(
            "Inventory",
          ),
          CustomButton(
            "All Posts",
          ),
          CustomButton(
            "Job Posts",
          ),
        ],
      ),
    );
  }
}

CustomButton(String Title, {bool isSelected = false}) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: RoundButton(
      button_Color:
          isSelected ? Apptheme().color_ButtonBG : Apptheme().color_BG,
      button_border_Color: Apptheme().color_white,
      button_height: 20,
      title: Title,
      title_Color: Apptheme().color_white,
      fontWeight: FontWeight.w600,
      textFontSize: 12,
    ),
  );
}
