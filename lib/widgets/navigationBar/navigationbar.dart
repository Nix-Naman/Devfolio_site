import 'package:flutter/material.dart';
import 'package:portfolio/widgets/navigationBar/navbar_desktop.dart';
import 'package:portfolio/widgets/navigationBar/navigation_bar_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const NavigationBarMobile(), //NavigationBarMobile(),
      tablet: const NavigationBarTabletDesktop(),
    );
  }
}
