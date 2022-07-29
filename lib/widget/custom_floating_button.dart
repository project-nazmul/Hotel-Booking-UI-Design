import 'package:flutter/material.dart';
import 'package:hotel_ui_design/design/text_design.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10,left: 10,bottom: 15),
      padding: const EdgeInsets.only(bottom: 10,top: 10),
      decoration: BoxDecoration(
          color: const Color(0xFFE3E8FE),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CircleAvatar(
            backgroundColor: Color(0xFFF5F6FB),
            child: Icon(Icons.check,color: Colors.black,size: 15,),
          ),
          TextDesign(text: 'Booking Now', fs: 20, fw: FontWeight.bold, clr: Colors.blue)

        ],
      ),

    );
  }
}
