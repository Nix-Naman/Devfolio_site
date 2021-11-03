import 'package:flutter/material.dart';
import 'package:portfolio/locator.dart';
import 'package:portfolio/routes/route_name.dart';
import 'package:portfolio/routes/router.dart';
import 'package:portfolio/services/navigation_service.dart';
import 'package:portfolio/widgets/nav_drawer/navigation_drawer.dart';
import 'package:portfolio/widgets/navigationBar/navigationbar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer()
            : null,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            const NavigationBar(),
            Expanded(
              child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                initialRoute: HomeRoute,
                onGenerateRoute: generateRoute,
              ),
            )
          ],
        ),
      ),
    );
  }
}
