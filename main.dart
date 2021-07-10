import 'package:flutter/material.dart';
import 'package:hamed_zizo/layout/bottom_navigation.dart';
import 'package:hamed_zizo/modules/bmi_result/bmi_result_screen.dart';
import 'package:hamed_zizo/modules/counter/counter_screen.dart';
import 'package:hamed_zizo/modules/home/home_screen.dart';
import 'package:hamed_zizo/modules/login/login_screen.dart';
import 'package:hamed_zizo/modules/messenger/messenger_design.dart';
import 'package:hamed_zizo/modules/users_screen/users_screen.dart';

import 'modules/bmi/bmi_screeb.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //من خلالها بشيل لامة ال debug
      home: MessngerDesign(),
    );
  }
}
