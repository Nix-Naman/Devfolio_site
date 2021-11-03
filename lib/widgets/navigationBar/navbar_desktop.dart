import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:portfolio/routes/route_name.dart';
import 'package:portfolio/utils/hover_effect.dart';

import 'navbar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      height: 82,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(
                  LineAwesomeIcons.code,
                  color: Coolors.secondaryColor,
                  size: 40,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Hover(builder: (_) {
                    return const NavBarItem('Home', HomeRoute);
                  }),
                  const SizedBox(width: 60),
                  Hover(builder: (_) {
                    return const NavBarItem('About', AboutRoute);
                  }),
                ],
              )
            ]),
      ),
    );
  }
}
