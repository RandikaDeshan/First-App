import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileAccuntPage extends StatelessWidget {
  const ProfileAccuntPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Last screeen

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Text(
          "Your Profile",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Profile image

            Padding(
              padding: EdgeInsets.only(top: 46.h),
              child: Image(
                image: const AssetImage("assets/images/Change Avatar.png"),
                width: 100.w,
                height: 101.h,
              ),
            ),

            //First name input feild

            Padding(
              padding: EdgeInsets.only(top: 31.h, left: 24.w, right: 24.w),
              child: SizedBox(
                height: 36.h,
                width: 327.w,
                child: TextFormField(
                  decoration: InputDecoration(
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "First Name (Required)",
                      hintStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(173, 181, 189, 1))),
                ),
              ),
            ),

            //Last name input feild

            Padding(
              padding: EdgeInsets.only(top: 12.h, left: 24.w, right: 24.w),
              child: SizedBox(
                height: 36.h,
                width: 327.w,
                child: TextFormField(
                  decoration: InputDecoration(
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Last Name (Optional)",
                      hintStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(173, 181, 189, 1))),
                ),
              ),
            ),
            SizedBox(
              height: 366.h,
            ),

            //Button

            TextButton(
                style: TextButton.styleFrom(
                    fixedSize: Size(327.w, 52.h),
                    backgroundColor: const Color.fromRGBO(0, 45, 227, 1)),
                onPressed: () {},
                child: Text(
                  "Save",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(247, 247, 252, 1)),
                ))
          ],
        ),
      ),
    );
  }
}
