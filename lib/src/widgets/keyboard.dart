import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KeyboardKey extends StatelessWidget {
  final int num;
  const KeyboardKey({super.key, required this.num});

  @override
  Widget build(BuildContext context) {
    //A key button on keyboard

    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(fixedSize: Size(110.w, 48.h)),
        child: Text(
          num.toString(),
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              color: const Color.fromRGBO(15, 24, 40, 1)),
        ));
  }
}
