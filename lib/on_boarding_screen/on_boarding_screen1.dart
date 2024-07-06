import 'package:flutter/material.dart';

import '../Custom_Widget/custom_widget1.dart';


class  OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1 ({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(OnBoardingController());

    return   const Scaffold(
      backgroundColor: Color(0xff8A9DFF),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 70,right: 24,left: 24),
        child: Column(
          children: [
            CustomWidget1(),
          ],
        ),
      ),
    );
  }
}

