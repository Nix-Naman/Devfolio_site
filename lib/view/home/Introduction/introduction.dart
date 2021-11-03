import 'package:flutter/material.dart';
import 'package:portfolio/view/home/Introduction/introduction_mobile.dart';
import 'package:portfolio/view/home/Introduction/introduction_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: IntroductionMobile(),
      tablet: IntroductionTabletDesktop(),
    );
  }
}
