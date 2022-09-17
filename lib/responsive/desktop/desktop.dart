import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DesktopDesign extends StatefulWidget {
  const DesktopDesign({super.key});

  @override
  State<DesktopDesign> createState() => _DesktopDesignState();
}

List<Color> colors = [
  Color(0xff99CAE1),
  Color(0xffE19999),
  Color(0xff9EE199),
  Color(0xff99CAE1),
  Color(0xff99CAE1),
];

class _DesktopDesignState extends State<DesktopDesign> {
  @override
  Widget build(BuildContext context) {
    var mainWidth = MediaQuery.of(context).size.width;
    var mainHeight = MediaQuery.of(context).size.height;
    print("Main Width => $mainWidth");
    print("Main Height => $mainHeight");
    return Scaffold(
      backgroundColor: Color(0xffF5FCFF),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color(0xffFFFFFF),
            statusBarIconBrightness: Brightness.dark),
        backgroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(fontSize: 16, color: Color(0xff747474)),
                    ),
                    Text(
                      'Find your Free Courses',
                      style: TextStyle(fontSize: 20, color: Color(0xff232323)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                )
              ],
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 8),
                    child: Text(
                      'Courses',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff232323),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 8,
                      ),
                      // physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return courses();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 200,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 8),
                    child: Container(
                      child: Text(
                        'Category',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff232323),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: mainHeight,
                    child: LayoutBuilder(builder: (context, constraints) {
                      return ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                          height: 11,
                        ),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return categories(
                              constraints: constraints, index: index);
                        },
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      // body: SingleChildScrollView(
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 20),
      //     child: Row(
      //       // crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      // Padding(
      //   padding: const EdgeInsets.only(top: 12, bottom: 8),
      //   child: Expanded(
      //     child: Container(
      //       child: Text(
      //         'Category',
      //         style: TextStyle(
      //           fontSize: 18,
      //           color: Color(0xff232323),
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      // Container(
      //   width: double.infinity,
      //   height: 180,
      //   child: LayoutBuilder(builder: (context, constraints) {
      //     return ListView.separated(
      //       separatorBuilder: (context, index) => SizedBox(
      //         width: 11,
      //       ),
      //       itemCount: 5,
      //       itemBuilder: (context, index) {
      //         return categories(constraints: constraints, index: index);
      //       },
      //     );
      //   }),
      // ),
      //         Expanded(
      //           child: Column(
      //             children: [
      // Padding(
      //   padding: const EdgeInsets.only(top: 12, bottom: 8),
      //   child: Text(
      //     'Courses',
      //     style: TextStyle(
      //       fontSize: 18,
      //       color: Color(0xff232323),
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
      // Container(
      //   child: ListView.separated(
      //     separatorBuilder: (context, index) => SizedBox(
      //       height: 8,
      //     ),
      //     physics: ClampingScrollPhysics(),
      //     shrinkWrap: true,
      //     itemCount: 5,
      //     itemBuilder: (context, index) {
      //       return courses();
      //     },
      //   ),
      // ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  Widget courses() => Container(
        height: 200,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/laptop.jpg'),
                ),
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.headphones),
                  color: Colors.white,
                )),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 11, bottom: 46),
                child: Text(
                  'Fundamentals of Computer Network Security Specialization',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                      padding:
                          const EdgeInsets.only(left: 11, bottom: 22, top: 8),
                      child: Icon(
                        Icons.coronavirus_sharp,
                        size: 14,
                        color: Colors.white,
                      )),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, bottom: 20),
                    child: Text(
                      'FREE',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  Widget categories({index, constraints}) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: colors[index]),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                width: constraints.maxWidth / 4,
                height: 60,
                child: Image(
                  image: AssetImage('assets/img.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Text(
                  'Development',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      );
}
