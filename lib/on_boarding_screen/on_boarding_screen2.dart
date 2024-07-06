import 'package:flutter/material.dart';

import 'on_boarding_screen3.dart';



class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2 ({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(OnBoardingController());
    return  Scaffold(
      backgroundColor: const Color(0xff8A9DFF),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 70, right: 24, left: 24),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Headline
                const Center(
                    child: Text('Effective Time\n Management',
                        style: TextStyle(
                            fontSize: 42, fontWeight: FontWeight.w500))),
                const SizedBox(height: 20),

                /// Image
                Container(
                  width: 600,
                  height: 450,
                  decoration: const BoxDecoration(
                      color: Color(0xff8A9DFF),
                      image: DecorationImage(
                        image: AssetImage("Assets/Images/Time_manage.png"),
                        fit: BoxFit.cover,
                      )),
                ),
                const SizedBox(height: 100),
                const Text(
                    "Optimize your schedule with effective \n       time management strategies ",
                    style: TextStyle(fontSize: 22)),
                const SizedBox(height: 40),

                /// icon Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      // backgroundColor: Color(0xff8A9DFF),
                        radius: 25,
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => const OnBoardingScreen3())
                              );
                            },
                            icon: const Icon(Icons.keyboard_arrow_right,
                                size: 35))),
                  ],
                )
              ],
            )
          ],
        )
      ),
    );
  }
}

