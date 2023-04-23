import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:caprotel/theme/color.dart';

class NotificationBox extends StatelessWidget {
  NotificationBox(
      {Key? key, this.onTap, this.size = 5, this.notifiedNumber = 0})
      : super(key: key);
  final GestureTapCallback? onTap;
  final int notifiedNumber;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(size),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: appBarColor,
            border: Border.all(color: Colors.grey.withOpacity(.3)),
          ),
        ));
  }
}
