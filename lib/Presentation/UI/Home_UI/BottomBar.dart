import 'package:flutter/material.dart';
import 'package:interview_ui/Presentation/CommonWidgets/IconWithText.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.grey,
          thickness: 0.5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Iconwithtext(icon: Icons.home, title: "Home"),
            Iconwithtext(icon: Icons.work, title: "Jobs"),
            Iconwithtext(icon: Icons.store, title: "Store"),
            Iconwithtext(icon: Icons.people, title: "Connections"),
            Iconwithtext(
              icon: Icons.person,
              title: "Profile",
              isSelected: true,
            )
          ],
        ),
      ],
    );
  }
}
