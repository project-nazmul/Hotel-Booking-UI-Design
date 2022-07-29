import 'package:flutter/material.dart';
import 'package:hotel_ui_design/design/text_design.dart';

class SingleFacility extends StatelessWidget {
  const SingleFacility({Key? key,required this.textColor,required this.facilityName,required this.icon,required this.iconColor}) : super(key: key);
  final String facilityName;
  final IconData icon;
  final Color iconColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: const Color(0xFFF5F6FB),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xFFDBDBE0),width: 2)
          ),
          child: Icon(icon,color: iconColor,),
        ),
        const SizedBox(height: 10,),
        TextDesign(text: facilityName, fs: 13, fw: FontWeight.bold, clr: textColor)
      ],
    );
  }
}
