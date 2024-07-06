import 'package:flutter/material.dart';
import 'package:my_app/Screens/task_screen.dart';

import '../Custom_Widget/assignment_container.dart';
import '../Custom_Widget/card_container.dart';

class WelcomeNoteScreen extends StatelessWidget {
  const WelcomeNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff8A9DFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff8A9DFF),
      ),
      body:    SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 13,right: 10),

          /// Body
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome to Notes',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black)),
                      Text('Have a great Day',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w400)),
                    ],
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('Assets/Images/dummy_profile.jpg'),

                  )
                ],
              ),
              const SizedBox(height: 24),
              const Align(alignment: Alignment.centerLeft,
                  child: Text('My Priority Task ',style: TextStyle(fontSize: 27))),
              const SizedBox(height: 15),

              /// Card Container
              const Row(
                children: [
                  CardContainer(
                    image: ('Assets/Images/Vector.png'),
                    title: '2 hours Ago', heading1: 'Mobile App',
                    heading2: 'UI Design', subTitle: 'Using figma\nand other tool',
                  ),
                  SizedBox(width: 05,),
                  CardContainer(
                      title:  '4 hours Ago',
                      heading1: 'Capture sun',
                      heading2: 'Rise Shots',
                      subTitle: 'complete GuroShorts\nChallenging',
                      image: 'Assets/Images/Vector (1).png')
                ],
              ),
              const SizedBox(height: 24),

              /// Task bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('My Tasks',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold)),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const TaskScreen() )
                    );
                  }, child: const Image(image: AssetImage('Assets/Images/Plus_icon.png'))),
                ],
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Expanded(child: Text("Today's Task",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold))),
                  Expanded(child: Text("Weekly Task",style: TextStyle(fontSize: 17))),
                  Expanded(child: Text("Monthly Task",style: TextStyle(fontSize: 17,))),
                ],
              ),
              const SizedBox(height: 20),

              /// Assignment Container
              const AssignmentContainer(
                title: 'Complete Assignment #2 ',
                subTitle: '13 September 2024',
                image: 'Assets/Images/Flag.png',
              ),
              const SizedBox(height: 15),
              const AssignmentContainer(
                  title: 'Submit Fee Challan',
                  subTitle: '18 September 2024',
                  image: 'Assets/Images/GreenFlag.png')
            ],
          ),
        ),

      ),
    );
  }
}




