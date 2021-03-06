import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_text.dart';
import 'package:velocity_x/velocity_x.dart';

class IntroductionAboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.6;
    double c_height = MediaQuery.of(context).size.height * 2.55;
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
      width: c_width,
      height: c_height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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

  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final AboutintroWidget = "Satyam is a 3rd-year student at SRM Institute of Science and Technology pursuing the Electrical and Electronics branch."
            "Despite being from a non-technical branch, Satyam is highly interested and skilled in Computer Science"
            " and is constantly making his way to learn new skills and grab knowledge every day through hard work and dedication"
            "to improving himself to succeed in the future.\n\n"
            "He also feels uncomfortable talking about himself in the third person ;)\n"
            "Currently, Satyam is learning React.js and to make unique Websites."
            "He is highly skilled in making Android, Web, and Desktop apps using Flutter and Dart. He is also good at Machine Learning and Deep Learning."
            "He also believes in giving back to the community; therefore, he regularly makes Open Source contributions and has been part of open source events like Girl Script Summer of Code and many renowned Hackathons across the Globe."
            "He is also interested in Competetive Coding is trying to improve his skills every day.\n"
            "Satyam is also part of various organizations such as Developer Student Clubs (DSC) SRM, and Microsoft Learn Student Ambassador and has made healthy contributions to the organizations and the community."
            "Satyam has the vision to improve himself every day and achieve great success with sheer hard work and dedication in the near future.\n\n"
            "Do Cheer up for Satyam...!"
        .text
        .gray500
        .sm
        .make()
        .w(context.isMobile ? context.screenWidth : context.percentWidth * 40);
    return ListView(
        physics: NeverScrollableScrollPhysics(),
        addAutomaticKeepAlives: true,
        children: <Widget>[
          // Flexible(child: AboutintroWidget),
          Wrap(
            children: [
              CustomText(
                text:
                    "Hello! I'm Naman, a student based in Indore, IN.\n\nI enjoy creating things that live on the internet, whether that be websites, applications, or anything in between. My goal is to always build products that provide pixel-perfect, performant experiences.\n\n",
                textsize: 16.0,
                color: Color(0xff828DAA),
                fontWeight: FontWeight.normal,
              ),
              CustomText(
                fontWeight: FontWeight.normal,
                text:
                    "Currently, I am pursuing my Bachlor's degree in Computer science and Engineering at Medicaps University Indore, as well as exploring a wide variety of interesting and meaningful technologies on a daily basis.\n\n",
                textsize: 16.0,
                color: Color(0xff828DAA),
              ),
              CustomText(
                text:
                    "Here are a few technologies I've been working with recently:\n\n",
                textsize: 16.0,
                color: Color(0xff828DAA),
                // fontWeight: FontWeight.w500,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          CustomText(
            text:
                "Here are a few technologies I've been working with recently:\n",
            textsize: 16.0,
            color: Color(0xff828DAA),
            fontWeight: FontWeight.w500,
            // letterSpacing: 0.75,
          ), // crossAlignment: CrossAxisAlignment.center,
          Container(
            height: size.height * 0.25,
            width: size.width,
            //   color: Colors.redAccent,
            child: Row(
              children: [
                Container(
                  width: size.width * 0.40,
                  height: size.height * 0.45,
                  child: Column(
                    children: [
                      technology(context, "Dart"),
                      technology(context, "Flutter"),
                      technology(context, "Firebase"),
                      technology(context, "UI/UX (Adobe Xd)"),
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.40,
                  height: size.height * 0.45,
                  child: Column(
                    children: [
                      technology(context, "C/C++"),
                      technology(context, "Python"),
                      technology(context, "MYSQL"),
                      technology(context, "Git - Github"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]);
  }
}
