import 'package:flutter/material.dart';
import 'package:hotel_ui_design/design/text_design.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key,required this.img}) : super(key: key);
  final String img;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 150,
        padding: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(img)
            ),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            )
        ),
        child: Row(
          crossAxisAlignment:CrossAxisAlignment.start ,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const TextDesign(text: 'Prince Hotel', fs: 20, fw: FontWeight.bold, clr: Colors.white),
            CircleAvatar(
              maxRadius: 15,
              backgroundColor: Colors.black.withOpacity(0.7),
              child: const Icon(Icons.edit_location_outlined,color: Colors.white,size: 15,),
            ),
          ],),


      ),
      Container(
        padding: const EdgeInsets.all(15),
        height: 100,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius:BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TextDesign(text: '\$600.00', fs: 15, fw: FontWeight.bold, clr: Color(0xFFCB7280)),
                TextDesign(text: 'Booking ID: 985069', fs: 13, fw: FontWeight.bold, clr: Color(0xFF3B3A42)),
                TextDesign(text: 'Prince Hotel', fs: 13, fw: FontWeight.bold, clr: Color(0xFFDBDADF)),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(3),
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: const Color(0xFFD8D7DC),
                      width: 3
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  TextDesign(text: '6', fs: 15, fw: FontWeight.normal, clr: Colors.black),
                  TextDesign(text: 'Dec', fs: 10, fw: FontWeight.normal, clr: Colors.black),
                ],
              ),
            )
          ],
        ),
      ),
    ],);
  }
}
