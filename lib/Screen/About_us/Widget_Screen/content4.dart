// import 'dart:html';

import 'package:flutter/material.dart';

class Content4T2 extends StatefulWidget {
  Content4T2({Key? key}) : super(key: key);

  @override
  _Content4T2State createState() => _Content4T2State();
}

class _Content4T2State extends State<Content4T2> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopHeaderContent4T2();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeaderContent4T2();
        } else {
          return MobileHeaderContent4T2();
        }
      },
    );
  }
}

class DesktopHeaderContent4T2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(top: 40.0),
              //   child: Image.asset(
              //     "assets/image/item2.png",
              //     //  height: MediaQuery.of(context).size.height - 175,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(top: 175, left: 150),
                child: Image.asset(
                  "assets/image/item3.png",
                  //height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 550),
                child: Image.asset(
                  "assets/image/item4.png",
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.0, left: 250),
                child: Image.asset(
                  "assets/image/item4.png",
                  //height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(top: 90.0, left: 400),
              //   child: Image.asset(
              //     "assets/image/item4.png",
              //     height: MediaQuery.of(context).size.height - 175,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.only(top: 100.0, left: 600),
              //   child: Image.asset(
              //     "assets/image/item4.png",
              //     height: MediaQuery.of(context).size.height - 175,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Container(
                  width: _width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/image/logosabil.png",
                                      height: 25.0,
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      "Yayasan Sabilurridho Ar Ruhandiah",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black87,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  width: _width / 5,
                                  child: Text(
                                    "Segi lima melambangkan partisipasi Yayasan sebagai bagian dari masyarakat Indonesia yang berlandaskan nilai-nilai Pancasila dan pengamalan ajaran Islam. Warna kuning keemasan mencerminkan harapan terciptanya masyarakat yang makmur dan damai melalui pembangunan manusia yang berkeadilan. \"Sabilur ridho\" berarti upaya mencapai keridhaan Allah SWT melalui program-program Yayasan yang bermanfaat bagi alam, khususnya di Indonesia, dan \"Ar Ruhandiah\" mencerminkan rasa syukur para pendiri dalam mewujudkan visi-misi tersebut.",
                                    style: TextStyle(
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black38),
                                  ),
                                )
                              ],
                            ),
                            // Column(
                            //   mainAxisAlignment: MainAxisAlignment.start,
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Text(
                            //       "Services",
                            //       style: TextStyle(
                            //           fontFamily: "Sofia",
                            //           fontWeight: FontWeight.w800,
                            //           color: Colors.black87,
                            //           fontSize: 18),
                            //     ),
                            //     SizedBox(
                            //       height: 10.0,
                            //     ),
                            //     Text(
                            //       "Development",
                            //       style: TextStyle(
                            //           fontFamily: "Sofia",
                            //           fontWeight: FontWeight.w300,
                            //           color: Colors.black38),
                            //     ),
                            //     SizedBox(
                            //       height: 8.0,
                            //     ),
                            //     Text(
                            //       "Design Sprint",
                            //       style: TextStyle(
                            //           fontFamily: "Sofia",
                            //           fontWeight: FontWeight.w300,
                            //           color: Colors.black38),
                            //     ),
                            //     SizedBox(
                            //       height: 8.0,
                            //     ),
                            //     Text(
                            //       "UX Design",
                            //       style: TextStyle(
                            //           fontFamily: "Sofia",
                            //           fontWeight: FontWeight.w300,
                            //           color: Colors.black38),
                            //     ),
                            //     SizedBox(
                            //       height: 8.0,
                            //     ),
                            //     Text(
                            //       "Online Marketing",
                            //       style: TextStyle(
                            //           fontFamily: "Sofia",
                            //           fontWeight: FontWeight.w300,
                            //           color: Colors.black38),
                            //     ),
                            //     SizedBox(
                            //       height: 8.0,
                            //     ),
                            //     Text(
                            //       "Content",
                            //       style: TextStyle(
                            //           fontFamily: "Sofia",
                            //           fontWeight: FontWeight.w300,
                            //           color: Colors.black38),
                            //     )
                            //   ],
                            // ),
                            // Column(
                            //   mainAxisAlignment: MainAxisAlignment.start,
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Text(
                            //       "About Us",
                            //       style: TextStyle(
                            //           fontFamily: "Sofia",
                            //           fontWeight: FontWeight.w800,
                            //           color: Colors.black87,
                            //           fontSize: 18),
                            //     ),
                            //     SizedBox(
                            //       height: 10.0,
                            //     ),
                            //     Text(
                            //       "About Us",
                            //       style: TextStyle(
                            //           fontFamily: "Sofia",
                            //           fontWeight: FontWeight.w300,
                            //           color: Colors.black38),
                            //     ),
                            //     SizedBox(
                            //       height: 8.0,
                            //     ),
                            //     Text(
                            //       "Portofolio",
                            //       style: TextStyle(
                            //           fontFamily: "Sofia",
                            //           fontWeight: FontWeight.w300,
                            //           color: Colors.black38),
                            //     ),
                            //     SizedBox(
                            //       height: 8.0,
                            //     ),
                            //     Text(
                            //       "Team",
                            //       style: TextStyle(
                            //           fontFamily: "Sofia",
                            //           fontWeight: FontWeight.w300,
                            //           color: Colors.black38),
                            //     ),
                            //     SizedBox(
                            //       height: 8.0,
                            //     ),
                            //     Text(
                            //       "Career",
                            //       style: TextStyle(
                            //           fontFamily: "Sofia",
                            //           fontWeight: FontWeight.w300,
                            //           color: Colors.black38),
                            //     ),
                            //   ],
                            // ),
                            // Column(
                            //   mainAxisAlignment: MainAxisAlignment.start,
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Text(
                            //       "Get in touch",
                            //       style: TextStyle(
                            //           fontFamily: "Sofia",
                            //           fontWeight: FontWeight.w800,
                            //           color: Colors.black87,
                            //           fontSize: 18),
                            //     ),
                            //     SizedBox(
                            //       height: 8.0,
                            //     ),
                            //     Text(
                            //       "99 Wall Street",
                            //       style: TextStyle(
                            //           fontFamily: "Sofia",
                            //           fontWeight: FontWeight.w300,
                            //           color: Colors.black38),
                            //     ),
                            //     SizedBox(
                            //       height: 8.0,
                            //     ),
                            //     Text(
                            //       "New York, NY 1005",
                            //       style: TextStyle(
                            //           fontFamily: "Sofia",
                            //           fontWeight: FontWeight.w300,
                            //           color: Colors.black38),
                            //     ),
                            //     Row(
                            //       children: [],
                            //     )
                            //   ],
                            // ),
                          ],
                        ),
                        SizedBox(
                          height: 90.0,
                        ),
                        Text("2024 Yayasan Sabilurridho Ar Ruhandiah"),
                        SizedBox(
                          height: 20.0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileHeaderContent4T2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(top: 40.0),
              //   child: Image.asset(
              //     "assets/image/item2.png",
              //     //  height: MediaQuery.of(context).size.height - 175,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(top: 175, left: 150),
                child: Image.asset(
                  "assets/image/item3.png",
                  //height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 550),
                child: Image.asset(
                  "assets/image/item4.png",
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.0, left: 250),
                child: Image.asset(
                  "assets/image/item4.png",
                  //height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(top: 90.0, left: 400),
              //   child: Image.asset(
              //     "assets/image/item4.png",
              //     height: MediaQuery.of(context).size.height - 175,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.only(top: 100.0, left: 600),
              //   child: Image.asset(
              //     "assets/image/item4.png",
              //     height: MediaQuery.of(context).size.height - 175,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Container(
                  width: _width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/image/logosabil.png",
                                          height: 25.0,
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "Yayasan Sabilurridho Ar Ruhandiah",
                                          style: TextStyle(
                                              fontFamily: "Sofia",
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black87,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Container(
                                      width: _width / 2,
                                      child: Text(
                                        "Indo Caris International is an industry-leading mobile and software development agency. Since 2016, our team of award-winning mobile strategists, UX/UI designers, and software engineers.",
                                        style: TextStyle(
                                            fontFamily: "Sofia",
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black38),
                                      ),
                                    )
                                  ],
                                ),
                            //     Column(
                            //       mainAxisAlignment: MainAxisAlignment.start,
                            //       crossAxisAlignment: CrossAxisAlignment.start,
                            //       children: [
                            //         Text(
                            //           "Services",
                            //           style: TextStyle(
                            //               fontFamily: "Sofia",
                            //               fontWeight: FontWeight.w800,
                            //               color: Colors.black87,
                            //               fontSize: 18),
                            //         ),
                            //         SizedBox(
                            //           height: 10.0,
                            //         ),
                            //         Text(
                            //           "Development",
                            //           style: TextStyle(
                            //               fontFamily: "Sofia",
                            //               fontWeight: FontWeight.w300,
                            //               color: Colors.black38),
                            //         ),
                            //         SizedBox(
                            //           height: 8.0,
                            //         ),
                            //         Text(
                            //           "Design Sprint",
                            //           style: TextStyle(
                            //               fontFamily: "Sofia",
                            //               fontWeight: FontWeight.w300,
                            //               color: Colors.black38),
                            //         ),
                            //         SizedBox(
                            //           height: 8.0,
                            //         ),
                            //         Text(
                            //           "UX Design",
                            //           style: TextStyle(
                            //               fontFamily: "Sofia",
                            //               fontWeight: FontWeight.w300,
                            //               color: Colors.black38),
                            //         ),
                            //         SizedBox(
                            //           height: 8.0,
                            //         ),
                            //         Text(
                            //           "Online Marketing",
                            //           style: TextStyle(
                            //               fontFamily: "Sofia",
                            //               fontWeight: FontWeight.w300,
                            //               color: Colors.black38),
                            //         ),
                            //         SizedBox(
                            //           height: 8.0,
                            //         ),
                            //         Text(
                            //           "Content",
                            //           style: TextStyle(
                            //               fontFamily: "Sofia",
                            //               fontWeight: FontWeight.w300,
                            //               color: Colors.black38),
                            //         )
                            //       ],
                            //     ),
                            //   ],
                            // ),
                            // SizedBox(
                            //   height: 25.0,
                            // ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Container(
                            //       width: _width / 2,
                            //       child: Column(
                            //         mainAxisAlignment: MainAxisAlignment.start,
                            //         crossAxisAlignment:
                            //             CrossAxisAlignment.start,
                            //         children: [
                            //           Text(
                            //             "About Us",
                            //             style: TextStyle(
                            //                 fontFamily: "Sofia",
                            //                 fontWeight: FontWeight.w800,
                            //                 color: Colors.black87,
                            //                 fontSize: 18),
                            //           ),
                            //           SizedBox(
                            //             height: 10.0,
                            //           ),
                            //           Text(
                            //             "About Us",
                            //             style: TextStyle(
                            //                 fontFamily: "Sofia",
                            //                 fontWeight: FontWeight.w300,
                            //                 color: Colors.black38),
                            //           ),
                            //           SizedBox(
                            //             height: 8.0,
                            //           ),
                            //           Text(
                            //             "Portofolio",
                            //             style: TextStyle(
                            //                 fontFamily: "Sofia",
                            //                 fontWeight: FontWeight.w300,
                            //                 color: Colors.black38),
                            //           ),
                            //           SizedBox(
                            //             height: 8.0,
                            //           ),
                            //           Text(
                            //             "Team",
                            //             style: TextStyle(
                            //                 fontFamily: "Sofia",
                            //                 fontWeight: FontWeight.w300,
                            //                 color: Colors.black38),
                            //           ),
                            //           SizedBox(
                            //             height: 8.0,
                            //           ),
                            //           Text(
                            //             "Career",
                            //             style: TextStyle(
                            //                 fontFamily: "Sofia",
                            //                 fontWeight: FontWeight.w300,
                            //                 color: Colors.black38),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //     Column(
                            //       mainAxisAlignment: MainAxisAlignment.start,
                            //       crossAxisAlignment: CrossAxisAlignment.start,
                            //       children: [
                            //         Text(
                            //           "Get in touch",
                            //           style: TextStyle(
                            //               fontFamily: "Sofia",
                            //               fontWeight: FontWeight.w800,
                            //               color: Colors.black87,
                            //               fontSize: 18),
                            //         ),
                            //         SizedBox(
                            //           height: 8.0,
                            //         ),
                            //         Text(
                            //           "99 Wall Street",
                            //           style: TextStyle(
                            //               fontFamily: "Sofia",
                            //               fontWeight: FontWeight.w300,
                            //               color: Colors.black38),
                            //         ),
                            //         SizedBox(
                            //           height: 8.0,
                            //         ),
                            //         Text(
                            //           "New York, NY 1005",
                            //           style: TextStyle(
                            //               fontFamily: "Sofia",
                            //               fontWeight: FontWeight.w300,
                            //               color: Colors.black38),
                            //         ),
                            //         Row(
                            //           children: [],
                            //         )
                            //       ],
                            //     ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text("2024 Yayasan Sabilurridho Ar Ruhandiah"),
                        SizedBox(
                          height: 40.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
