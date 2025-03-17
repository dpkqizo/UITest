import 'package:flutter/material.dart';
import 'package:interview_ui/Core/Apptheme/Apptheme.dart';
import 'package:interview_ui/Presentation/CommonWidgets/VerticalDivider_Custom.dart';

class Businesscard extends StatelessWidget {
  const Businesscard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About Our Business',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "About Our Business",
                style: TextStyle(
                    color: Apptheme().color_white,
                    fontSize: Apptheme().size_MainHeading,
                    fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.arrow_forward,
                color: Apptheme().color_white,
              )
            ],
          ),
          SizedBox(height: 12),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
            style: TextStyle(
                color: Apptheme().color_Paragraph_Text,
                fontSize: Apptheme().size_Content),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                  color: Apptheme().color_BoxGb,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem(title: '4.5', icon: Icons.star),
                      Verticaldivider(),
                      InfoItem(title: '100+', icon: Icons.visibility),
                      Verticaldivider(),
                      InfoItem(title: '50+', icon: Icons.comment),
                      Verticaldivider(),
                      InfoItem(title: '50+', icon: Icons.people),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Since 1980",
                        style: TextStyle(
                            color: Apptheme().color_white,
                            fontSize: Apptheme().size_Content),
                      ),
                      Spacer(),
                      Text(
                        "Joined At :",
                        style: TextStyle(
                            color: Apptheme().color_white,
                            fontSize: Apptheme().size_Content,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "1/1/2024",
                        style: TextStyle(
                            color: Apptheme().color_white,
                            fontSize: Apptheme().size_Content),
                      ),
                      Spacer(),
                      Text(
                        "Posts:",
                        style: TextStyle(
                            color: Apptheme().color_white,
                            fontSize: Apptheme().size_Content,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "31",
                        style: TextStyle(
                            color: Apptheme().color_white,
                            fontSize: Apptheme().size_Content),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

InfoItem({icon, title}) {
  return Row(
    children: [
      Icon(icon, color: Apptheme().color_blue),
      Text(title, style: TextStyle(color: Apptheme().color_white)),
    ],
  );
}

Verticaldivider() {
  return VerticaldividerCustom(
    height: 30,
    color: Apptheme().color_white,
    thickness: 0.5,
    width: 1,
  );
}
