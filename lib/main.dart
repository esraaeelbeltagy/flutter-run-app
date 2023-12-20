import 'package:flutter/material.dart';
import 'package:flutter_sheet/get_started.dart';
import 'package:flutter_sheet/home.dart';
import 'package:flutter_sheet/login.dart';
import 'package:flutter_sheet/my_bottom_bar.dart';
import 'package:flutter_sheet/store_screen.dart';
import 'package:flutter_sheet/verfiy_email.dart';
// import 'package:flutter_sheet/models/store.dart';
// import 'package:flutter_sheet/my_bottom_bar.dart';
// import 'package:flutter_sheet/store_screen.dart';

// import 'package:flutter_sheet/verfiy_email.dart';
// import 'package:flutter_sheet/view_wallet.dart';

// import 'add_address.dart';
// import 'get_started.dart';
// import 'history.dart';
// import 'home.dart';
// import 'login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
 debugShowCheckedModeBanner: false,     
      title: 'Flutter Demo',
      // theme: ThemeData(
      // scaffoldBackgroundColor:const  Color(0xff28333F),
      
   
      // ),
    home: GetStarted(),
    );
  }
}

