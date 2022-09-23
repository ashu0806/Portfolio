import 'package:flutter/material.dart';
import 'package:flutter_profile/core/app_constant.dart';
import 'package:flutter_profile/models/internship_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InternshipCard extends StatelessWidget {
  const InternshipCard({
    Key? key,
    required this.internships,
  }) : super(key: key);

  final Internships internships;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(
        defaultPadding,
      ),
      color: Color.fromARGB(255, 60, 60, 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            internships.name!,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            internships.source!,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: primaryColor,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            internships.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              height: 1.5,
            ),
          )
        ],
      ),
    );
  }
}
