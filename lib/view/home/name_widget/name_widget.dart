import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:portfolio/utils/hover_effect.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../utils/hover_effect.dart';
import '../../../colors.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.5;
    double c_height = MediaQuery.of(context).size.height * 0.55;
    final SNameWidget = "Naman\nPatel."
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return Container(
      width: 600,
      height: c_height,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          // addAutomaticKeepAlives: true,
          children: <Widget>[
            if (context.isMobile) 50.heightBox else 10.heightBox,
            Align(
                alignment: Alignment.topLeft,
                child: const CustomAppBar()
                    .shimmer(primaryColor: Coolors.secondaryColor)),
            const SizedBox(height: 20),
            SNameWidget,
            const SizedBox(height: 25),
            Row(
              children: [
                LimitedBox(
                  maxWidth: 80,
                  child: VxBox()
                      .color(Coolors.accentColor)
                      .size(60, 10)
                      .make()
                      .px4()
                      .shimmer(primaryColor: Coolors.secondaryColor),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const SocialAccounts(),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      LineAwesomeIcons.terminal,
      size: 50,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return [
      Hover(builder: (isHovered) {
        final color = !isHovered ? Colors.white : Coolors.secondaryColor;
        return Icon(
          Icons.mail_outline_rounded,
          color: color,
        ).mdClick(() {
          launch("mailto:naman.dobhi@gmail.com");
        }).make();
      }),
      20.widthBox,
      Hover(builder: (isHovered) {
        final color = !isHovered ? Colors.white : Coolors.secondaryColor;
        return Icon(
          FontAwesomeIcons.twitter,
          color: color,
        ).mdClick(() {
          launch("https://twitter.com/Naman_83");
        }).make();
      }),
      20.widthBox,
      Hover(builder: (isHovered) {
        final color = !isHovered ? Colors.white : Coolors.secondaryColor;
        return Icon(
          FontAwesomeIcons.instagram,
          color: color,
        ).mdClick(() {
          launch("https://www.instagram.com/_naman.p");
        }).make();
      }),
      20.widthBox,
      Hover(builder: (isHovered) {
        final color = !isHovered ? Colors.white : Coolors.secondaryColor;
        return Icon(
          LineAwesomeIcons.linkedin,
          color: color,
        ).mdClick(() {
          launch("https://www.linkedin.com/in/naman-kumar-patel-757b22214/");
        }).make();
      }),
      20.widthBox,
      Hover(builder: (isHovered) {
        final color = !isHovered ? Colors.white : Coolors.secondaryColor;
        return Icon(
          LineAwesomeIcons.github,
          color: color,
        ).mdClick(() {
          launch("https://github.com/Nix-Naman");
        }).make();
      }),
      20.widthBox,
    ].hStack();
  }
}
