import 'package:flutter/material.dart';
import 'package:caprotel/data/example_data6.dart';
import 'package:caprotel/widg/home/hotel.dart';

Column buildHotelSearch(Color defaultColor, Size size) {
  return Column(children: [
    Padding(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.025,
      ),
      child: SizedBox(
        width: size.width * 0.85,
        child: ListView.builder(
          itemCount: caprotel6.length,
          primary: false,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, i) {
            Map hotel = {};
            if (i >= caprotel6.length) {
              hotel = caprotel6[i];
            } else {
              hotel = caprotel6[i];
            }
            return buildHotel(hotel, defaultColor, size);
          },
        ),
      ),
    ),
  ]);
}
