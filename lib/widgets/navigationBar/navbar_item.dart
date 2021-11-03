import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/locator.dart';
import 'package:portfolio/services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(navigationPath);
        },
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18, color: const Color(0xffCCD6F6).withOpacity(0.9)),
        ),
      ),
    );
  }
}
