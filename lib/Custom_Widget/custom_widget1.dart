import 'package:flutter/material.dart';
import 'package:my_app/on_boarding_screen/on_boarding_screen2.dart';

class CustomWidget1 extends StatelessWidget {
  const CustomWidget1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(OnBoardingController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Center(
            child: Text('Manage your\n Daily TO DO',
                style: TextStyle(fontSize: 42,fontWeight: FontWeight.w500))),
        const SizedBox(height: 20),

        /// Image
        Container(
          height: 500,
          width:  400,
          decoration:  const BoxDecoration(
              color: Color(0xff8A9DFF),
              image: DecorationImage(
                image: AssetImage("Assets/Images/Illustration.png"),fit: BoxFit.contain,
              )
          ),
        ),
        const SizedBox(height: 50),
        const Text('Without much worry just manage\n thing as easy as piece of cake',
            style: TextStyle(fontSize: 24)),
        const SizedBox(height: 40),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              // backgroundColor: Color(0xff8A9DFF),
                radius: 25,
                child: IconButton(onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  const OnBoardingScreen2(),
                    ),
                  );
                },icon: const Icon(Icons.keyboard_arrow_right,size: 35))
            ),
          ],
        )
      ],
    );
  }
}
