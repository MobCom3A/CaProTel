import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:caprotel/data/example_data.dart';
import 'package:caprotel/widg/home/hotel.dart';
import 'package:unicons/unicons.dart';

Column buildHotelSearch(Color defaultColor, Size size) {
  return Column(children: [
    Padding(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.025,
      ),
      child: SizedBox(
        width: size.width * 0.85,
        child: ListView.builder(
          itemCount: caprotel.length,
          primary: false,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, i) {
            Map hotel = {};
            if (i >= caprotel.length) {
              hotel = caprotel[i];
            } else {
              hotel = caprotel[i];
            }
            return buildHotel(hotel, defaultColor, size);
          },
        ),
      ),
    ),
  ]);
}
