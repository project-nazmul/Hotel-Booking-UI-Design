import 'package:flutter/material.dart';
import 'package:hotel_ui_design/design/text_design.dart';
import 'package:hotel_ui_design/design/custom_appbar_leading.dart';
import 'package:hotel_ui_design/widget/custom_facilities.dart';
import 'package:hotel_ui_design/widget/custom_floating_button.dart';
import 'package:hotel_ui_design/widget/details_view.dart';
import 'package:hotel_ui_design/widget/results_list_view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  final String img = 'https://i0.wp.com/poribar.net/files/2021/01/Pan-Pacific-2.jpg?fit=840%2C460&ssl=1';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F5FA),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color(0xFFF5F5FA),
          leading: const CustomAppBarLeading(),
          title: const TextDesign(text: 'Hotels', fs: 25, fw: FontWeight.bold, clr: Colors.black,)
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 18 ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Color(0xFFF5F5FA)
          ),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 22,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextDesign(text: 'Hotels For You', fs: 20, fw: FontWeight.bold, clr: Colors.black),
                        Row(
                          children: const [
                            Icon(Icons.edit),
                            SizedBox(width: 20,),
                            Icon(Icons.search)
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 18,),
                    const TextDesign(text: '150 Results', fs: 20, fw: FontWeight.bold, clr: Color(0xFF9A9AA6)),
                    const SizedBox(height: 15,),
                    ResultsListView(img: img),
                    const SizedBox(height: 5,),
                    Center(
                      child: Container(
                        height: 4,
                        width: 50,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    DetailsView(img: img),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TextDesign(text: 'Facilities', fs: 22, fw: FontWeight.bold, clr: Colors.black),
                        TextDesign(text: 'See more', fs: 12, fw: FontWeight.bold, clr: Colors.blue),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const CustomFacilities(),
                    const SizedBox(height: 90,),



                  ],
                ),
              ),
              const Positioned(
                bottom: 10,
                right: 10,
                left: 10,
                child: CustomFloatingButton(),
              ),

            ],

          ),
        ),
      ),
    );
  }
}
