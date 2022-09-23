import 'package:flutter/material.dart';
import 'package:flutter_profile/core/app_constant.dart';
import 'package:flutter_profile/models/internship_model.dart';
import 'package:flutter_profile/pages/home/components/internship_card.dart';
import 'package:flutter_profile/responsive.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: defaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Internships",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Responsive(
            mobile: InternshipsGridView(
              crossAxisCount: 1,
              childAspectRatio: 1.7,
            ),
            mobileLarge: InternshipsGridView(crossAxisCount: 2),
            tablet: InternshipsGridView(childAspectRatio: 1.1),
            desktop: InternshipsGridView(),
          ),
        ],
      ),
    );
  }
}

class InternshipsGridView extends StatelessWidget {
  const InternshipsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.5,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: internships.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => InternshipCard(
        internships: internships[index],
      ),
    );
  }
}
