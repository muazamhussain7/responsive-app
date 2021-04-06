import 'package:flutter/material.dart';

import 'package:responsive_app/components/footer.dart';
import 'package:responsive_app/components/header.dart';
import 'package:responsive_app/components/side_menu.dart';
import 'package:responsive_app/responsive.dart';
import 'components/jumbotron.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: isMobile(context) ? SideMenu() : Container(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Header(),
              Jumbotron(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
