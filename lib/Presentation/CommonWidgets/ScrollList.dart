import 'package:flutter/material.dart';
import 'package:interview_ui/Core/Apptheme/Apptheme.dart';
import 'package:interview_ui/Core/StaticFile.dart';

class ScrollList extends StatelessWidget {
  List<String> imgArray;

  ScrollList({super.key, required this.imgArray});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Apptheme().color_BoxGb,
      height: 200,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              for (String a in imgArray)
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red,
                        image: DecorationImage(
                            fit: BoxFit.cover, image: AssetImage("Assets/$a"))),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
