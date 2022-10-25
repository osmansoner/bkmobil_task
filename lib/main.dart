import 'package:bkmobile_task/constant/color_constant.dart';
import 'package:bkmobile_task/features/user/view/screens/users_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BKMobile Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: ColorConstants.instance.BKMWhite,
      ),
      home: UsersScreen(),
    );
  }
}

