import 'package:flutter/material.dart';
import 'package:my_app/Screens/welcome_note.dart';


class OnBoardingScreen3 extends StatelessWidget {
  const OnBoardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = OnBoardingController();
    return Scaffold(
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
                    child: Text('Efficient Task\n Completion',
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
                        image: AssetImage("Assets/Images/Task.png"),
                        fit: BoxFit.cover,
                      )),
                ),

                const SizedBox(height: 60),
                const Text(
                    "Set your goals high, and don't  \n       stop tell you get there   ",
                    style: TextStyle(fontSize: 22)),
                const SizedBox(height: 40),

                /// icon Button

                SizedBox(
                  width: 200,
                  height: 45,
                  child:
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const WelcomeNoteScreen())
                    );
                  },style: const ButtonStyle(
                      backgroundColor:WidgetStatePropertyAll(Color(0xffFFC00E))
                  ),child: const Text('Create a note',
                      style: TextStyle(fontSize: 21,color: Colors.black)),),
                )
              ],
            ),
          ],
        )
      ),
    );
  }
}
