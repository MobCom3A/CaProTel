import 'package:flutter/material.dart';
import 'package:caprotel/widg/home/hotel_search6.dart';
import 'package:caprotel/widg/home/top_bar.dart';
import 'package:caprotel/theme/color.dart';
import 'package:caprotel/screens/root_app.dart';

class Homey6Page extends StatefulWidget {
  const Homey6Page({Key? key}) : super(key: key);

  @override
  _Homey6PageState createState() => _Homey6PageState();
}

class _Homey6PageState extends State<Homey6Page> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //check the size of device
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness ==
        Brightness.dark; //check if device is in dark or light mode
    Color defaultColor = isDarkMode ? Colors.white : Colors.black;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: appBarColor,
        toolbarHeight: 40,
        title: Text(
          "CaProTel",
          style: TextStyle(
            color: darker,
            fontWeight: FontWeight.w900,
            fontSize: 18,
          ),
        ),
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      //bottomNavigationBar: buildBottomNavBar(0, size, isDarkMode),
      body: Center(
        child: Container(
          height: size.height,
          width: size.height,
          decoration: BoxDecoration(
            color: isDarkMode
                ? const Color(0xff06090d)
                : orange.withOpacity(0.2), //background color
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.02,
                left: size.width * 0.05,
                right: size.width * 0.05,
              ),
              child: ListView(
                children: [
                  buildTopBar(defaultColor, size),
                  Divider(
                    color: defaultColor,
                    thickness: 0.25,
                    height: size.height * 0.035,
                  ),
                  //buildForYou(defaultColor, size),
                  buildHotelSearch(defaultColor, size),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
