import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_profile/core/app_constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(
                  defaultPadding,
                ),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Uttar Pradesh",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Lucknow",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "21",
                    ),
                    Skills(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Coding(),
                    // Knowledges(),
                    Divider(),
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: primaryColor,
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding / 2,
                            ),
                            SvgPicture.asset(
                              "assets/icons/download.svg",
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: defaultPadding,
                      ),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () async {
                              final url = Uri.parse(
                                  'https://www.linkedin.com/in/ashwini-gupta-939621200/');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              }
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/linkedin.svg",
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              final url =
                                  Uri.parse('https://github.com/ashu0806');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              }
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/github.svg",
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              log("message");
                              final url = Uri.parse(
                                  'https://www.instagram.com/_ashu_1807/');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              }
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/instagram.svg",
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
