import 'package:flutter/material.dart';
import 'package:flutter_profile/core/app_constant.dart';
import 'package:flutter_profile/models/project_model.dart';
import 'package:flutter_profile/responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        defaultPadding,
      ),
      color: Color.fromARGB(255, 60, 60, 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              project.title!,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 5 : 6,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              height: 1.5,
            ),
          ),
          Spacer(),
          // TextButton(
          //   onPressed: () {},
          //   child: Text(
          //     "Read More >>",
          //     style: TextStyle(
          //       color: primaryColor,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
