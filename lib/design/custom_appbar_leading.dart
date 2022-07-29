import 'package:flutter/material.dart';

class CustomAppBarLeading extends StatelessWidget {
  const CustomAppBarLeading({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 15,bottom: 15,right: 15,left: 10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 12,

              )
            ],
            color: Color(0xFFF5F5FA)
        ),
        child: const Icon(Icons.arrow_back_ios_rounded,color: Colors.black,size: 13,)
    );
  }
}
