import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:caprotel/theme/color.dart';

Column buildTopBar(Color defaultColor, Size size) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Searching hotel in",
            style: GoogleFonts.poppins(
              color: defaultColor.withOpacity(0.4),
              fontSize: size.height * 0.017,
            ),
          ),
          Row(
            children: [
              Icon(
                UniconsLine.location_pin_alt,
                color: Colors.indigo,
                size: size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.015,
                ),
                child: Text(
                  "Cagayan Valley",
                  style: GoogleFonts.lato(
                    color: defaultColor,
                    fontSize: size.height * 0.025,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
