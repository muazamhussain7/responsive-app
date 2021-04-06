import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsive_app/responsive.dart';
import 'menu_item.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 50,
          ),
          SizedBox(width: 10),
          Text(
            "Peta Beauty",
            style: GoogleFonts.reenieBeanie(fontSize: 18),
          ),
          Spacer(),
          if (!isMobile(context))
            Row(
              children: [
                NavItem(
                  title: 'Home',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Donate',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Contact Us',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Login',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Shop',
                  tapEvent: () {},
                ),
              ],
            ),
          if (isMobile(context))
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            )
        ],
      ),
    );
  }
}
