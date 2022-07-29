import 'package:flutter/material.dart';

class ResultsListView extends StatelessWidget {
  const ResultsListView({Key? key,required this.img}) : super(key: key);
  final String img;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex:11,
          child: SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 15),
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(img),
                          fit: BoxFit.cover
                      )
                  ),
                );
              },
            ),
          ),
        ),
        const Expanded(
            flex: 1,
            child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 13,)),
      ],
    );
  }
}
