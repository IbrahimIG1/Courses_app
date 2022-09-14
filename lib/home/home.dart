import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<Color> colors = [
    Color(0xff99CAE1),
    Color(0xffE19999),
    Color(0xff9EE199),
    Color(0xff99CAE1),
    Color(0xff99CAE1),
  ];
  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 8),
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
                height: 157,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 11,
                  ),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: colors[index]),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Container(
                              width: 62.65,
                              height: 59.71,
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
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 8),
                child: Container(
                  child: Text(
                    'Courses',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff232323),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                height: 500,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    height: 8,
                  ),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 205,
                      width: 335,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
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
                              padding:
                                  const EdgeInsets.only(left: 11, bottom: 46),
                              child: Text(
                                'Fundamentals of Computer Network Security Specialization',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 11, bottom: 22, top: 8),
                                    child: Icon(
                                      Icons.coronavirus_sharp,
                                      size: 14,
                                      color: Colors.white,
                                    )),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, bottom: 20),
                                  child: Text(
                                    'FREE',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
