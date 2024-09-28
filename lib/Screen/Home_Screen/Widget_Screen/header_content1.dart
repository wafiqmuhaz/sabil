// import 'dart:html';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:caris/Style/Style.dart';

class HeaderContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopHeaderContent1();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeaderContent1();
        } else {
          return MobileHeaderContent1();
        }
      },
    );
  }
}

_launchURL() async {
  final url = Uri.encodeFull('https://wafiqmuhaz.netlify.app');
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class DesktopHeaderContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 178.0, left: 50.0),
            child: Image.asset("assets/image/item1.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Image.asset(
              "assets/image/item2.png",
              height: MediaQuery.of(context).size.height - 175,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height - 175, left: 450),
            child: Image.asset(
              "assets/image/item3.png",
              //height: MediaQuery.of(context).size.height - 175,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 550),
            child: Image.asset(
              "assets/image/item4.png",
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 55.0),
                child: Container(
                  height: MediaQuery.of(context).size.height - 75,
                  width: _width / 2.2,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Tentang Kami",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.black26,
                              fontWeight: FontWeight.w700,
                              fontSize: 19.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Sabilur ridho artinya jalan atau ikhtiar untuk mencapai keridhoan Alloh SWT melalui semua programnya mencakup seluruh alam khususnya di wilayah NKRI ( rahmatan lil alamiin )",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 22.0),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            "Ar Ruhandiah mengacu kepada bentuk rasa syukur para pendiri Yayasan yang bercita-cita mewujudkan visi-misi di atas.",
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black38,
                                fontFamily: "Sofia",
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        // InkWell(
                        //   onTap: () {
                        //     _launchURL();
                        //   },
                        //   child: Container(
                        //     height: 40.0,
                        //     width: 155.0,
                        //     decoration: BoxDecoration(
                        //         gradient: colors.primaryGoldGradient,
                        //         borderRadius:
                        //             BorderRadius.all(Radius.circular(20.0))),
                        //     child: Center(
                        //       child: Text(
                        //         "GET STARTED",
                        //         style: TextStyle(
                        //             color: colors.white,
                        //             fontFamily: "Sofia",
                        //             fontWeight: FontWeight.w500,
                        //             fontSize: 14),
                        //       ),
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 75,
                width: _width / 2.2,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image/logosabil.png"),
                        fit: BoxFit.cover)),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MobileHeaderContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 578.0, left: 50.0),
            child: Image.asset("assets/image/item1.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400.0),
            child: Image.asset(
              "assets/image/item2.png",
              height: MediaQuery.of(context).size.height - 375,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 455, left: 150),
            child: Image.asset(
              "assets/image/item3.png",
              //height: MediaQuery.of(context).size.height - 175,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 455, left: 50),
            child: Image.asset(
              "assets/image/item4.png",
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: _width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 400.0,
                        width: _width,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/image/logosabil.png"),
                                fit: BoxFit.contain)),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 20.0, top: 95.0, right: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tentang Kami",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black26,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19.0),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Sabilur ridho artinya jalan atau ikhtiar untuk mencapai keridhoan Alloh SWT melalui semua programnya mencakup seluruh alam khususnya di wilayah NKRI ( rahmatan lil alamiin )",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42.0),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                "Ar Ruhandiah mengacu kepada bentuk rasa syukur para pendiri Yayasan yang bercita-cita mewujudkan visi-misi di atas.",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black38,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            // InkWell(
                            //   onTap: () {
                            //     _launchURL();
                            //   },
                            //   child: Container(
                            //     height: 40.0,
                            //     width: 155.0,
                            //     decoration: BoxDecoration(
                            //         gradient: colors.primaryGoldGradient,
                            //         borderRadius: BorderRadius.all(
                            //             Radius.circular(20.0))),
                            //     child: Center(
                            //       child: Text(
                            //         "GET IN TOUCH",
                            //         style: TextStyle(
                            //             color: colors.white,
                            //             fontFamily: "Sofia",
                            //             fontWeight: FontWeight.w500,
                            //             fontSize: 14),
                            //       ),
                            //     ),
                            //   ),
                            // )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
