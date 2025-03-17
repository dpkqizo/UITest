import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_ui/Core/Apptheme/Apptheme.dart';
import 'package:interview_ui/Core/StaticFile.dart';
import 'package:interview_ui/Presentation/CommonWidgets/Round_Button.dart';
import 'package:interview_ui/Presentation/CommonWidgets/ScrollList.dart';

class SimilerStores extends StatelessWidget {
  const SimilerStores({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Similar Store",
                style: TextStyle(
                    color: Apptheme().color_white,
                    fontSize: Apptheme().size_MainHeading,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "View All  ",
                style: TextStyle(
                    fontSize: Apptheme().size_Content,
                    color: Apptheme().color_blue),
              ),
              Icon(
                CupertinoIcons.arrow_right,
                color: Apptheme().color_blue,
                size: 15,
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                child: ImageList(context, StaticFile().BottomImg),
              ),
            ],
          )
        ],
      ),
    );
  }
}

ImageList(context, imgArray) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          for (String a in imgArray)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Apptheme().color_BoxGb,
                ),
                height: 250,
                width: MediaQuery.of(context).size.width / 1.5,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(
                        "Assets/$a",
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Apptheme().color_red,
                          child: Image.asset("Assets/burgerking.png"),
                        ),
                        SizedBox(
                          width: 02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Burger King",
                              style: TextStyle(
                                  color: Apptheme().color_white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text("4.5",
                                    style: TextStyle(
                                        color: Apptheme().color_yellow,
                                        fontWeight: FontWeight.bold)),
                                Icon(
                                  Icons.star,
                                  color: Apptheme().color_yellow,
                                  size: 15,
                                )
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        RoundButton(
                          button_Color: Apptheme().color_blue,
                          button_border_Color: Apptheme().color_blue,
                          title_Color: Apptheme().color_white,
                          textFontSize: 10,
                          title: "Contact Us",
                          button_height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    )
                  ],
                ),
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8),
                //     color: Colors.red,
                //     image: DecorationImage(fit:BoxFit.cover,image: AssetImage("Assets/$a"))),
              ),
            )
        ],
      ),
    ),
  );
}
