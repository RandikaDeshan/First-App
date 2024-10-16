import 'package:first_app/src/views/profileaccount.dart';
import 'package:first_app/src/widgets/keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifficationPage extends StatelessWidget {
  const VerifficationPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Second screen

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //Text

            Padding(
              padding: EdgeInsets.only(top: 79.h, left: 40.w, right: 40.w),
              child: Text(
                "Enter Your Phone Number",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w, right: 40.w),
              child: Text(
                "Please confirm your country code and enter your phone number",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
              ),
            ),

            //Input feild

            Padding(
              padding: EdgeInsets.only(top: 48.h, left: 24.w, right: 24.w),
              child: SizedBox(
                width: 321.w,
                height: 36.h,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: const AssetImage("assets/images/Flag.png"),
                      width: 24.w,
                      height: 24.h,
                    ),
                    Text(
                      "+62",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(173, 181, 189, 1)),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            hintText: "Phone Number",
                            hintStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(173, 181, 189, 1))),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Button

            Padding(
              padding: EdgeInsets.only(top: 81.h, left: 24.w, right: 24.w),
              child: TextButton(
                  style: TextButton.styleFrom(
                      fixedSize: Size(327.w, 52.h),
                      backgroundColor: const Color.fromRGBO(0, 45, 227, 1)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ProfileAccuntPage();
                      },
                    ));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(247, 247, 252, 1)),
                  )),
            ),
            SizedBox(
              height: 42.h,
            ),

            //Keyboard

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: KeyboardKey(num: 1),
                ),
                Expanded(
                  flex: 4,
                  child: KeyboardKey(num: 2),
                ),
                Expanded(flex: 4, child: KeyboardKey(num: 3)),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: KeyboardKey(num: 4),
                ),
                Expanded(
                  flex: 4,
                  child: KeyboardKey(num: 5),
                ),
                Expanded(
                  flex: 4,
                  child: KeyboardKey(num: 6),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: KeyboardKey(num: 7),
                ),
                Expanded(
                  flex: 4,
                  child: KeyboardKey(num: 8),
                ),
                Expanded(
                  flex: 4,
                  child: KeyboardKey(num: 9),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    flex: 4,
                    child: SizedBox(
                      height: 48.h,
                      width: 110.w,
                    )),
                const Expanded(
                  flex: 4,
                  child: KeyboardKey(num: 0),
                ),
                Expanded(
                    flex: 4,
                    child: IconButton(
                      style: IconButton.styleFrom(fixedSize: Size(110.w, 48.h)),
                      onPressed: () {},
                      icon: const Icon(Icons.backspace_outlined),
                      color: const Color.fromRGBO(15, 24, 40, 1),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
