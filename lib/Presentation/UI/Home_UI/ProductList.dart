import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_ui/Core/Apptheme/Apptheme.dart';
import 'package:interview_ui/Core/StaticFile.dart';
import 'package:interview_ui/Presentation/CommonWidgets/Round_Button.dart';
import 'package:interview_ui/Presentation/CommonWidgets/ScrollList.dart';

class Productlist extends StatelessWidget {
  const Productlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Apptheme().color_BoxGb,
      height: 300,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                RoundButton(
                  button_height: 45,
                  button_Color: Apptheme().color_ButtonBG,
                  button_border_Color: Apptheme().color_ButtonBG,
                  title_Color: Apptheme().color_white,
                  title: "  Products  ",
                  textFontSize: Apptheme().size_SubHeadinge,
                  radious: 25,
                ),
                SizedBox(
                  width: 8,
                ),
                RoundButton(
                  button_height: 45,
                  button_Color: Colors.black12,
                  button_border_Color: Colors.black12,
                  title_Color: Apptheme().color_white,
                  title: "  Services  ",
                  textFontSize: Apptheme().size_SubHeadinge,
                  radious: 25,
                )
              ],
            ),
          ),
          ScrollList(imgArray: StaticFile().ProductImg)
        ],
      ),
    );
  }
}
