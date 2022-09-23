import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';
import 'package:flutter_profile/core/app_constant.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: defaultPadding,
          ),
          child: Text(
            "Languages Known",
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: primaryColor,
                ),
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          label: "JavaScript",
        ),
      ],
    );
  }
}
