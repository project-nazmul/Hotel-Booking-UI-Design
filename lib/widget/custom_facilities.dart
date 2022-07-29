import 'package:flutter/material.dart';
import 'package:hotel_ui_design/design/single_facility.dart';

class CustomFacilities extends StatelessWidget {
  const CustomFacilities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        SingleFacility(textColor: Colors.red, facilityName: 'Swimming', icon: Icons.pool, iconColor: Colors.yellow),
        SingleFacility(textColor: Colors.green, facilityName: 'Wi-Fi', icon: Icons.wifi, iconColor: Colors.purple),
        SingleFacility(textColor: Colors.purple, facilityName: 'AC', icon: Icons.ac_unit, iconColor: Colors.green),
        SingleFacility(textColor: Colors.yellow, facilityName: 'Dinner', icon: Icons.dinner_dining, iconColor: Colors.red),

      ],
    );
  }
}
