import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_sheet/history.dart';
import 'package:flutter_sheet/home.dart';
import 'package:flutter_sheet/store_screen.dart';
import 'package:flutter_sheet/view_wallet.dart';

// import 'package:iconly/iconly.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Widget> listPage = [
    HomeScreen(),
    History(),
    StoreScreen(),
    ViewWallet(),
  ];

  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: listPage.elementAt(selectedTab),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: CrystalNavigationBar(
          borderRadius: 22,
          selectedItemColor: const Color(0xffF14985),
          backgroundColor: Color(0xff323d56),
          currentIndex: selectedTab,
          // currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          // indicatorColor: Color(0xff7B61FF),
          unselectedItemColor: Colors.white70,
          splashColor: Color(0xff7B61FF),
          splashBorderRadius: 30,

          //duration:Duration(microseconds: 10000) ,
          // outlineBorderColor: Colors.black.withOpacity(0.1),
          onTap: (index) {
            setState(() {
              selectedTab = index;
            });
          },
          items: [
            /// Home
            CrystalNavigationBarItem(
                icon: Icons.home,
                unselectedIcon: Icons.home,
                selectedColor: Color(0xffF14985)),

            /// Favourite
            CrystalNavigationBarItem(
                icon: Icons.star_border_purple500_rounded,
                unselectedIcon: Icons.star_border_purple500_rounded,
                selectedColor: Color(0xffF14985)),

            /// Search
            CrystalNavigationBarItem(
                icon: CupertinoIcons.cart,
                unselectedIcon: CupertinoIcons.cart,
                selectedColor: Color(0xffF14985)),

            /// Profile
            CrystalNavigationBarItem(
                icon: Icons.person,
                unselectedIcon: Icons.person,
                selectedColor: Color(0xffF14985)),
          ],
        ),
      ),
    );
  }
}
