import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff8A9DFF),
      appBar: AppBar(
        backgroundColor: const Color(0xff8A9DFF),
      ),
      /// Body
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Create new Task',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black)),
                    ],
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('Assets/Images/dummy_profile.jpg'),

                  )
                ],
              ),

              const SizedBox(height: 30),

              /// Form field

              const Row(
                children: [
                 Text('Form',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)),
                  SizedBox(width: 190),
                  Text('To',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)),
                ],
              ),
              const SizedBox(height: 15),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(

                        /// Form
                        child: TextFormField(
                        decoration:  const InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 10,top: 10,left: 10,right: 10),
                          filled: true,
                          fillColor: Colors.white,
                          hintStyle: TextStyle(color: Colors.green),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        cursorColor: Colors.black,
                        style: const TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(width: 90),
                      /// Form To
                      Expanded(
                        child: TextFormField(
                          decoration:  const InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 10,top: 10,left: 10,right: 10),
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: TextStyle(color: Colors.green),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                          cursorColor: Colors.black,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40),
              /// Title Form
               const Text('Title',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)),
               const SizedBox(height: 10),

               TextFormField(
                 decoration:   InputDecoration(
                   filled: true,
                   fillColor: Colors.white,
                   hintStyle: const TextStyle(color: Colors.green),
                   enabledBorder:  OutlineInputBorder(
                     borderSide: const BorderSide(color: Colors.white),
                       borderRadius: BorderRadius.circular(10)
                   ),
                   focusedBorder: OutlineInputBorder(
                     borderSide: const BorderSide(color: Colors.white),
                     borderRadius: BorderRadius.circular(10)
                   ),
                 ),
                 cursorColor: Colors.black,
                 style: const TextStyle(color: Colors.black),
               ),
              const SizedBox(height: 25),

              /// Description Form
              const Text('Description',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)),
              const SizedBox(height: 05),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: TextFormField(
                  maxLines: 120,
                  decoration:   InputDecoration(
                    // contentPadding: EdgeInsets.symmetric(vertical: 120),
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: const TextStyle(color: Colors.green),
                    enabledBorder:  OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  cursorColor: Colors.black,
                  style: const TextStyle(color: Colors.black),
                ),
              ),

              const SizedBox(height: 25),

              /// Priority
              const Text('Choose Priority',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500)),
              const SizedBox(height: 25),

              /// Priority Button
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffDD1515),
                          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10))),
                        child: const Text('High',style: TextStyle(fontSize: 20,color: Colors.black))),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffA6A6A6),
                            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10))),
                        child: const Text('Medium',style: TextStyle(fontSize: 20,color: Colors.black))),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff79AF92),
                            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10))),
                        child: const Text('Low',style: TextStyle(fontSize: 20,color: Colors.black))),
                  ),
                ],
              ),

              /// Final SizeBox
              const SizedBox(height:120),

              SizedBox(
                  width: double.infinity,
                  height: 53,
                  child: ElevatedButton(onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff79AF92),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    child: const Text('Add',style: TextStyle(color: Colors.black,fontSize: 20)))),

            ],
          ),
        ),
      ),
    );
  }
}
