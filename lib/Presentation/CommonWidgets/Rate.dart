import 'package:flutter/material.dart';
import 'package:interview_ui/Core/Apptheme/Apptheme.dart';
import 'package:interview_ui/Presentation/CommonWidgets/Round_Button.dart';

class RatingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Apptheme().color_BoxGb,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text('Rate Our Business',
                          style: TextStyle(
                              fontSize: Apptheme().size_SubHeadinge,
                              fontWeight: FontWeight.bold,
                              color: Apptheme().color_yellow)),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(5, (index) {
                          return Icon(
                            Icons.star,
                            color: index < 1
                                ? Apptheme().color_ButtonBG
                                : Apptheme().color_BG,
                            size: 30,
                          );
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '0 Rated - View Ratings',
                          style: TextStyle(
                              color: Apptheme().color_white,
                              fontSize: Apptheme().size_Content),
                        ),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                  child: RoundButton(
                button_Color: Apptheme().color_BoxGb,
                button_border_Color: Apptheme().color_BG,
                button_height: 50,
                title: "Share Visiting card",
                title_Color: Apptheme().color_white,
                textFontSize: Apptheme().size_SubHeadinge,
                fontWeight: FontWeight.bold,
                radious: 25,
              )),
              SizedBox(
                width: 8,
              ),
              Expanded(
                  child: RoundButton(
                button_Color: Apptheme().color_BoxGb,
                button_border_Color: Apptheme().color_BG,
                button_height: 50,
                title: "Share profile",
                title_Color: Apptheme().color_white,
                textFontSize: Apptheme().size_SubHeadinge,
                fontWeight: FontWeight.bold,
                radious: 25,
              )),
            ],
          )
        ],
      ),
    );
  }
}
