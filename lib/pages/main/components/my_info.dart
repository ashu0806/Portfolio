import 'package:flutter/material.dart';
import 'package:flutter_profile/core/app_constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                "assets/images/profile.png",
              ),
            ),
            Spacer(),
            Text(
              "Ashwini Gupta",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Container(
                height: 35.h,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(
                    10.r,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Flutter Developer",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
