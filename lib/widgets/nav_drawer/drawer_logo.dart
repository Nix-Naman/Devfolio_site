import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class DrawerLogo extends StatelessWidget {
  const DrawerLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      LineAwesomeIcons.code,
      size: 75,
      color: Colors.white,
    );
  }
}
