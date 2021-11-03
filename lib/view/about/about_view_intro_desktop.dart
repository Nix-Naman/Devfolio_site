import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_text.dart';
import 'package:velocity_x/velocity_x.dart';

class IntroductionAboutDesktop extends StatelessWidget {
  const IntroductionAboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.65;
    double c_height = MediaQuery.of(context).size.height * 0.8;
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 20, 25, 0),
      width: c_width,
      height: c_height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
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

  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: const Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.0,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final AboutintroWidget =
        "Hello! I'm Naman, a Flutter developer based in Indore, IN.\n\nI enjoy creating things that live on the internet, whether that be websites, applications, or anything in between. My goal is to always build products that provide pixel-perfect, performant experiences.\n\n"
            .text
            .gray500
            .sm
            .make()
            .w(context.isMobile
                ? context.screenWidth
                : context.percentWidth * 40);
    return ListView(children: <Widget>[
      // Flexible(child: AboutintroWidget),
      Wrap(children: const [
        CustomText(
          text:
              "Hello! I'm Naman, a Flutter developer based in Indore, IN.\n\nI enjoy creating things that live on the internet, whether that be websites, applications, or anything in between.\nMy goal is to always build products that provide pixel-perfect, performant experiences.\n\n",
          textsize: 16.0,
          fontWeight: FontWeight.normal,
          color: Color(0xff828DAA),
        ),
        CustomText(
          text:
              "Currently, I am pursuing my Bachlor's degree in Computer science and Engineering at Medicaps University Indore, as well as exploring a wide variety of interesting and meaningful projects on a daily basis.\n\n",
          textsize: 16.0,
          fontWeight: FontWeight.normal,
          color: Color(0xff828DAA),
        ),
      ]),
      SizedBox(
        height: 20,
      ),
      const CustomText(
        text: "Here are a few technologies I've been working with recently:\n",
        textsize: 16.0,

        color: Color(0xff828DAA),
        fontWeight: FontWeight.w500,
        // letterSpacing: 0.2,
      ), // crossAlignment: CrossAxisAlignment.center,
      Container(
        // height: size.height * 0.20,
        width: size.width,
        //   color: Colors.redAccent,
        child: Row(
          children: [
            Container(
              width: size.width * 0.18,
              // height: size.height * 0.25,
              child: Column(
                children: [
                  technology(context, "Flutter"),
                  technology(context, "Dart"),
                  technology(context, "C/C++"),
                  technology(context, "Python"),
                  technology(context, "UI/UX"),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
