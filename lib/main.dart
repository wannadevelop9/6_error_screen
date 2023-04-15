import 'package:error_screen/Screens/2_no_Internet_Screen.dart';
import 'package:error_screen/Screens/3_no_internet_screen.dart';
import 'package:error_screen/Screens/404_error_screen.dart';
import 'package:error_screen/Screens/no_internet_Screen.dart';
import 'package:error_screen/Screens/payment_failed.dart';
import 'package:flutter/material.dart';

import 'Screens/error_screen.dart';
List<Widget> screenList = [
  PaymentFaildScreen(),
  Error404Screen(),
  NoInternet(),
  ErrorScreen(),
  NoInternetConnectionFood(),
  NoInternetConnection()
];
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Error Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageView.builder(
          itemCount: screenList.length,
          itemBuilder: (context, index) {
            return screenList[index];
          }),
    );
  }
}

