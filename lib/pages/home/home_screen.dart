import 'package:flutter/material.dart';
import 'package:flutter_profile/pages/main/main_screen.dart';

import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/internships.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}
