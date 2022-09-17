import 'package:course_app/responsive/desktop/desktop.dart';
import 'package:course_app/responsive/mobile/mobile.dart';
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key});
  

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return MobileDesign();
      } else {
        return DesktopDesign();
      }
    });
  }
}
