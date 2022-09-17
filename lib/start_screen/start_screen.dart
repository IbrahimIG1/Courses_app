import 'package:course_app/home/home.dart';
import 'package:course_app/shared/navigators/navigators.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mainWidth = MediaQuery.of(context).size.width;
    var mainHeight = MediaQuery.of(context).size.height;
    print("Main Width => $mainWidth");
    print("Main Height => $mainHeight");
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          startImage(mainWidth),
          Padding(
            padding: const EdgeInsets.only(top: 36, left: 36, right: 36),
            child: Text(
              'Find Your Favouet Course',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9, left: 36, right: 36),
            child: Text(
              'Lorem ipsum dolor sit amet, consetetur\n sadipscing elitr, sed diam nonumy eirmod\n tempor invidunt ut labore et dolore',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xffBBBBBB),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          getStartButton(context: context, mainWidth: mainWidth),
        ],
      ),
    );
  }

  Widget startImage(double mainWidth) => Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
        child: Container(
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/startImage.jpg',
            ),
            width: mainWidth,
            height: 324,
          ),
        ),
      );

  Widget getStartButton({double? mainWidth, context}) => Padding(
        padding: const EdgeInsets.only(right: 30, left: 30, top: 129),
        child: Container(
          width: mainWidth! / 1.5,
          height: 56,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(34)),
          child: MaterialButton(
            color: Color(0xff6CC4EE),
            onPressed: () {
              navigateAndReplace(context, Home());
            },
            child: Text(
              'Get Start',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      );
}
