import 'package:flutter/material.dart';
import 'package:interview_ui/Core/Apptheme/Apptheme.dart';
import 'package:interview_ui/Presentation/CommonWidgets/Round_Button.dart';

class Headercard extends StatelessWidget {
  const Headercard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          radius: 40,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("Assets/MCD.png"))),
          ),
          backgroundColor: Apptheme().color_red,
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "McDonalds",
                    style: TextStyle(
                        fontSize: Apptheme().size_MainHeading,
                        fontWeight: FontWeight.w600,
                        color: Apptheme().color_white),
                  ),
                  Spacer(),
                  RoundButton(
                    button_Color: Apptheme().color_BG,
                    button_border_Color: Apptheme().color_yellow,
                    title: "Restorant",
                    button_height: 20,
                    title_Color: Apptheme().color_white,
                    textFontSize: 12,
                  ),
                  SizedBox(
                    width: 8,
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      radius: 12,
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Apptheme().color_white,
                        size: 18,
                      ),
                      backgroundColor: Apptheme().color_IconBG,
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                      style: TextStyle(
                          color: Apptheme().color_Paragraph_Text,
                          fontSize: Apptheme().size_Content),
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                      child: RoundButton(
                    radious: 15,
                    onPresse: () {},
                    title: 'Follow',
                    button_border_Color: Apptheme().color_ButtonBG,
                    button_Color: Apptheme().color_ButtonBG,
                    title_Color: Apptheme().color_white,
                    button_height: 40,
                    textFontSize: Apptheme().size_SubHeadinge,
                    fontWeight: FontWeight.w700,
                  )),
                  SizedBox(width: 8),
                  Expanded(
                      child: RoundButton(
                    radious: 15,
                    onPresse: () {},
                    title: 'Chat',
                    button_border_Color: Apptheme().color_ButtonBG,
                    button_Color: Apptheme().color_BG,
                    title_Color: Apptheme().color_white,
                    button_height: 40,
                    textFontSize: Apptheme().size_SubHeadinge,
                    fontWeight: FontWeight.w700,
                  )),
                  SizedBox(width: 8),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
