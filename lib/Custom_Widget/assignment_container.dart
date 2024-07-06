import 'package:flutter/material.dart';

class AssignmentContainer extends StatelessWidget {
  const AssignmentContainer({
    super.key, required this.title, required this.subTitle, required this.image,
  });
  final String title,subTitle,image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12,right:16),
      padding: const EdgeInsets.only(left: 20,right: 10,top: 5,),
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.white
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
              Row(
                children: [
                  const Image(image: AssetImage('Assets/Images/Calender.png'),height: 27),
                  Text(subTitle,style: const TextStyle(color: Colors.black38,)),
                  const SizedBox(width: 10),
                   Image(image: AssetImage(image),height: 25),

                ],
              )
            ],
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,size: 35,))
        ],
      ),
    );
  }
}
