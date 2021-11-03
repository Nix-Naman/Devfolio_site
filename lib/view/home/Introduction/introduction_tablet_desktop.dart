import 'package:flutter/material.dart';
import 'package:portfolio/utils/hover_effect.dart';
import 'package:portfolio/widgets/custom_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../colors.dart';

class IntroductionTabletDesktop extends StatelessWidget {
  const IntroductionTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.5;
    double c_height = MediaQuery.of(context).size.height * 0.55;
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      width: c_width,
      height: c_height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(child: Introduction()),
        ],
      ),
    );
  }
}

class Introduction extends StatelessWidget {
  const Introduction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final introWidget =
        "I am Your friendly Neighbourhood Developer  and a Learning Enthusiast, who is obsessed with the idea of improving himself and wants a platform to grow and excel.\n"
            .text
            .white
            .xl2
            .maxLines(15)
            .make()
            .w(context.isMobile
                ? context.screenWidth
                : context.percentWidth * 40);
    return ListView(children: <Widget>[
      " - Introduction".text.gray500.widest.sm.make(),
      const SizedBox(height: 10),
      CustomText(
        text: "I build things for the Android, IOS and Web.",
        textsize: 36.0,
        color: const Color(0xffCCD6F6).withOpacity(0.6),
        fontWeight: FontWeight.w700,
      ),
      const SizedBox(height: 20),
      introWidget,
      const SizedBox(height: 20),
      Row(
        children: [
          LimitedBox(
            maxWidth: 80,
            child: VxBox()
                .color(Coolors.secondaryColor)
                .size(60, 10)
                .make()
                .px4()
                .shimmer(primaryColor: Coolors.secondaryColor),
          ),
        ],
      ),
      const SizedBox(height: 20),
      Row(
        children: [
          LimitedBox(
              maxWidth: 150,
              child: Hover(builder: (isHovered) {
                final color = !isHovered
                    ? Coolors.secondaryColor.withOpacity(0.9)
                    : Coolors.secondaryColor;
                return TextButton(
                  onPressed: () {
                    launch(
                        "https://drive.google.com/file/d/1YSxFPuTzx-T3NHwun5mxsHQX2qLHobJy/view?usp=sharing");
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(color),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                  child: "Resume".text.white.bold.make(),
                ).h(50);
              })),
        ],
      ), // crossAlignment: CrossAxisAlignment.center,
    ]);
  }
}
