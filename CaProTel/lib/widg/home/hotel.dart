import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

SizedBox buildHotel(
  Map hotel,
  Color defaultColor,
  Size size,
) {
  return SizedBox(
    height: size.height * 0.5,
    width: size.width * 0.85,
    child: InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              hotel['img'],
              fit: BoxFit.fill,
              height: size.height * 0.3,
              width: size.width * 0.85,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return Container(
                  height: size.height * 0.3,
                  width: size.width * 0.85,
                  decoration: BoxDecoration(
                    color: defaultColor.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: SizedBox(
                    width: size.width * 0.7,
                    height: size.height * 0.3,
                    child: Align(
                      child: CircularProgressIndicator(
                        color: defaultColor,
                      ),
                    ),
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: size.height * 0.3,
                  width: size.width * 0.85,
                  decoration: BoxDecoration(
                    color: defaultColor.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: SizedBox(
                    width: size.width * 0.7,
                    height: size.height * 0.3,
                    child: Align(
                      child: CircularProgressIndicator(
                        color: defaultColor,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.01,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.5,
                  child: Text(
                    hotel['name'],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.lato(
                      color: defaultColor,
                      fontSize: size.height * 0.02,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 241, 26, 80)),
                    ),
                    onPressed: null,
                    child: const Text('BOOK NOW'),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: defaultColor,
            height: size.height * 0.02,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${hotel['location']} ",
                style: GoogleFonts.questrial(
                  color: Colors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.star,
                color: defaultColor,
                size: size.height * 0.025,
              ),
              Text(
                "${hotel['rating'].toStringAsFixed(1)}/5",
                style: GoogleFonts.lato(
                  color: defaultColor,
                  fontSize: size.height * 0.022,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${hotel['details']} ",
                style: GoogleFonts.questrial(
                  color: Colors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
