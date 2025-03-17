import 'package:flutter/material.dart';
import 'package:interview_ui/Core/Apptheme/Apptheme.dart';
import 'package:interview_ui/Core/StaticFile.dart';
import 'package:interview_ui/Presentation/CommonWidgets/Rate.dart';
import 'package:interview_ui/Presentation/CommonWidgets/Round_Button.dart';
import 'package:interview_ui/Presentation/UI/Home_UI/BottomBar.dart';
import 'package:interview_ui/Presentation/UI/Home_UI/BusinessCard.dart';
import 'package:interview_ui/Presentation/UI/Home_UI/HeaderCard.dart';
import 'package:interview_ui/Presentation/UI/Home_UI/HeaderTab.dart';
import 'package:interview_ui/Presentation/UI/Home_UI/ProductList.dart';
import 'package:interview_ui/Presentation/CommonWidgets/ScrollList.dart';
import 'package:interview_ui/Presentation/UI/Home_UI/SimilarStores.dart';

class Home_Screeen extends StatelessWidget {
  Home_Screeen({super.key});

  Apptheme apptheme = Apptheme();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: apptheme.color_BG,
      appBar: AppBar(
        title: Text(
          "Business Profile",
          style: TextStyle(
              fontSize: apptheme.size_AppbarTitle,
              fontWeight: FontWeight.w600,
              color: apptheme.color_white),
        ),
      ),
      bottomNavigationBar: Container(height: 100, child: Bottombar()),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Headertab(),
            SizedBox(
              height: 20,
            ),
            Headercard(),
            RatingWidget(),
            Businesscard(),
            ScrollList(
              imgArray: StaticFile().BusinessImg,
            ),
            SizedBox(
              height: 20,
            ),
            Productlist(),
            SizedBox(
              height: 20,
            ),
            SimilerStores(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
