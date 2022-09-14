import 'package:course_app/home/home.dart';
import 'package:course_app/shared/navigators/navigators.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      // ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 26, top: 100),
            child: Container(
              child: Image(
                image: AssetImage(
                  'assets/startImage.jpg',
                ),
                width: 324,
                height: 324,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 36, left: 36),
            child: Text(
              'Find Your Favouet Course',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9, left: 34),
            child: Text(
              'Lorem ipsum dolor sit amet, consetetur\n sadipscing elitr, sed diam nonumy eirmod\n tempor invidunt ut labore et dolore',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xffBBBBBB),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 129),
            child: Container(
              width: 315,
              height: 56,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(34)),
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
          )
        ],
      ),
    );
  }
}
