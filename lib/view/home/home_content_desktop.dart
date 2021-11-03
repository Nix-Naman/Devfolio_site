// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Introduction/introduction.dart';
import 'name_widget/name_widget.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        PictureWidget(),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              NameWidget(),
              Expanded(
                child: Center(
                  child: IntroductionWidget(),
                ),
              )
            ]),
      ],
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Image.asset(
        "assets/images/bg.jpg",
        fit: BoxFit.cover,
        color: Colors.black87.withOpacity(0.9),
        colorBlendMode: BlendMode.darken,
      ),
      desktop: Image.asset(
        "assets/images/bg.jpg",
        fit: BoxFit.cover,
        color: Colors.black87.withOpacity(0.9),
        colorBlendMode: BlendMode.darken,
      ),
    );
  }
}
