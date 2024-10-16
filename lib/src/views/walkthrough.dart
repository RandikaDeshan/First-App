import 'package:first_app/src/views/veriffication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalkthroughPage extends StatelessWidget {
  const WalkthroughPage({super.key});

  @override
  Widget build(BuildContext context) {
    //First Screen

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Main Screen image

            Padding(
              padding: EdgeInsets.only(top: 75.h),
              child: const Image(
                image: AssetImage("assets/images/Illustration.png"),
              ),
            ),

            //Main Text

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 47.w, vertical: 42.h),
              child: Text(
                "Connect easily with your family and friends over countries",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromRGBO(15, 24, 40, 1),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 126.h,
            ),
            Text(
              "Terms & Privacy Policy",
              style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color.fromRGBO(15, 24, 40, 1),
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 18.h,
            ),

            //Button

            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const VerifficationPage();
                  },
                ));
              },
              style: TextButton.styleFrom(
                  fixedSize: Size(327.w, 52.h),
                  backgroundColor: const Color.fromRGBO(0, 45, 227, 1)),
              child: Text(
                "Start Messaging",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(247, 247, 253, 1)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
