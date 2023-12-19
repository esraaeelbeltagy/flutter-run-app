// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';


// class BottomBar extends StatefulWidget {
//   const BottomBar({super.key});

//   @override
//   State<BottomBar> createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         child: Image.network(
//           "https://images.pexels.com/photos/1671325/pexels-photo-1671325.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
//           fit: BoxFit.fitHeight,
//         ),
//       ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.only(bottom: 10),
//         child: CrystalNavigationBar(
//           currentIndex: _SelectedTab.values.indexOf(_selectedTab),
//           // indicatorColor: Colors.white,
//           unselectedItemColor: Colors.white70,
//           backgroundColor: Colors.black.withOpacity(0.1),
//           // outlineBorderColor: Colors.black.withOpacity(0.1),
//           onTap: _handleIndexChanged,
//           items: [
//             /// Home
//             CrystalNavigationBarItem(
//               icon: IconlyBold.home,
//               unselectedIcon: IconlyLight.home,
//               selectedColor: Colors.white,
//             ),

//             /// Favourite
//             CrystalNavigationBarItem(
//               icon: IconlyBold.heart,
//               unselectedIcon: IconlyLight.heart,
//               selectedColor: Colors.red,
//             ),

//             /// Add
//             CrystalNavigationBarItem(
//               icon: IconlyBold.plus,
//               unselectedIcon: IconlyLight.plus,
//               selectedColor: Colors.white,
//             ),

//             /// Search
//             CrystalNavigationBarItem(
//                 icon: IconlyBold.search,
//                 unselectedIcon: IconlyLight.search,
//                 selectedColor: Colors.white),

//             /// Profile
//             CrystalNavigationBarItem(
//               icon: IconlyBold.user_2,
//               unselectedIcon: IconlyLight.user,
//               selectedColor: Colors.white,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }