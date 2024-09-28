import 'package:flutter/material.dart';
import 'package:caris/Style/Style.dart';

import 'package:url_launcher/url_launcher.dart';

class Content3T1 extends StatelessWidget {
  const Content3T1({Key? key}) : super(key: key);

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
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 178.0, left: 250.0),
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
                  Container(
                    height: 450.0,
                    width: _width / 2.2,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            spreadRadius: 4.0,
                            color: Colors.black12,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/image/design.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 75,
                      width: _width / 2.2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Text(
                              "Soliasisasi Program",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42.0),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                "Kami mensosialisasikan berbagai macam program",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black38,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            InkWell(
                              onTap: () {
                                // _launchURL();
                              },
                              child: Container(
                                height: 40.0,
                                width: 155.0,
                                decoration: const BoxDecoration(
                                    gradient: colors.primaryGradient,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: const Center(
                                  child: Text(
                                    "COMING SOON",
                                    style: TextStyle(
                                        color: colors.white,
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
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
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
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
                  "assets/image/sosialisasidakwah.jpg",
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Text(
                              "Edukasi dakwah ekonomi syariah",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42.0),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                "Kami membangun platform edukasi ekonomi syariah",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black38,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            InkWell(
                              onTap: () {
                                // _launchURL();
                              },
                              child: Container(
                                height: 40.0,
                                width: 155.0,
                                decoration: const BoxDecoration(
                                    gradient: colors.primaryGradient,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: const Center(
                                  child: Text(
                                    "COMING SOON",
                                    style: TextStyle(
                                        color: colors.white,
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 450.0,
                    width: _width / 2.2,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            spreadRadius: 4.0,
                            color: Colors.black12,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/image/develop.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ],
          ),
          //STACK2
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 178.0, left: 250.0),
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
                  Container(
                    height: 450.0,
                    width: _width / 2.2,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            spreadRadius: 4.0,
                            color: Colors.black12,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/image/design.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 75,
                      width: _width / 2.2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Text(
                              "Fasilitas antar lembaga",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42.0),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                "Kami platform penyedia fasilitas silaturrahim antar lembaga",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black38,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            InkWell(
                              onTap: () {
                                // _launchURL();
                              },
                              child: Container(
                                height: 40.0,
                                width: 155.0,
                                decoration: const BoxDecoration(
                                    gradient: colors.primaryGradient,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: const Center(
                                  child: Text(
                                    "COMING SOON",
                                    style: TextStyle(
                                        color: colors.white,
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
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
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Text(
                              "Marketing produk",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42.0),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                "Kami menyediakan layanan marketing pemasaran produk bagi yayasan",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black38,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            InkWell(
                              onTap: () {
                                // _launchURL();
                              },
                              child: Container(
                                height: 40.0,
                                width: 155.0,
                                decoration: const BoxDecoration(
                                    gradient: colors.primaryGradient,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: const Center(
                                  child: Text(
                                    "COMING SOON",
                                    style: TextStyle(
                                        color: colors.white,
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 450.0,
                    width: _width / 2.2,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            spreadRadius: 4.0,
                            color: Colors.black12,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/image/develop.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ],
          ),
          //STACK3
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 178.0, left: 250.0),
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
                  Container(
                    height: 450.0,
                    width: _width / 2.2,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            spreadRadius: 4.0,
                            color: Colors.black12,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/image/design.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 75,
                      width: _width / 2.2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Text(
                              "Aksesing dan Channelling",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42.0),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                "Untuk program pemerintah dan swasta",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black38,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            InkWell(
                              onTap: () {
                                // _launchURL();
                              },
                              child: Container(
                                height: 40.0,
                                width: 155.0,
                                decoration: const BoxDecoration(
                                    gradient: colors.primaryGradient,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: const Center(
                                  child: Text(
                                    "COMING SOON",
                                    style: TextStyle(
                                        color: colors.white,
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
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
          // Stack(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(top: 0.0),
          //       child: Image.asset(
          //         "assets/image/item2.png",
          //         height: MediaQuery.of(context).size.height - 175,
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //     Padding(
          //       padding: EdgeInsets.only(
          //           top: MediaQuery.of(context).size.height - 175, left: 450),
          //       child: Image.asset(
          //         "assets/image/item3.png",
          //         //height: MediaQuery.of(context).size.height - 175,
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(top: 25, left: 550),
          //       child: Image.asset(
          //         "assets/image/item4.png",
          //         height: 120,
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.only(left: 55.0),
          //           child: Container(
          //             height: MediaQuery.of(context).size.height - 75,
          //             width: _width / 2.2,
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 5.0, right: 35.0),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: <Widget>[
          //                   const SizedBox(
          //                     height: 5.0,
          //                   ),
          //                   const Text(
          //                     "Edukasi dakwah ekonomi syariah",
          //                     style: TextStyle(
          //                         fontFamily: "Sofia",
          //                         color: Colors.black,
          //                         fontWeight: FontWeight.w900,
          //                         fontSize: 42.0),
          //                   ),
          //                   const Padding(
          //                     padding:
          //                         EdgeInsets.symmetric(vertical: 20.0),
          //                     child: Text(
          //                       "Kami membangun platform edukasi ekonomi syariah",
          //                       style: TextStyle(
          //                           fontSize: 18.0,
          //                           color: Colors.black38,
          //                           fontFamily: "Sofia",
          //                           fontWeight: FontWeight.w500),
          //                     ),
          //                   ),
          //                   const SizedBox(
          //                     height: 30.0,
          //                   ),
          //                   InkWell(
          //                     onTap: () {
          //                       // _launchURL();
          //                     },
          //                     child: Container(
          //                       height: 40.0,
          //                       width: 155.0,
          //                       decoration: const BoxDecoration(
          //                           gradient: colors.primaryGradient,
          //                           borderRadius: BorderRadius.all(
          //                               Radius.circular(20.0))),
          //                       child: const Center(
          //                         child: Text(
          //                           "COMING SOON",
          //                           style: TextStyle(
          //                               color: colors.white,
          //                               fontFamily: "Sofia",
          //                               fontWeight: FontWeight.w500,
          //                               fontSize: 14),
          //                         ),
          //                       ),
          //                     ),
          //                   )
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ),
          //         Container(
          //           height: 450.0,
          //           width: _width / 2.2,
          //           decoration: const BoxDecoration(
          //               borderRadius: BorderRadius.only(
          //                   topLeft: Radius.circular(20.0),
          //                   bottomLeft: Radius.circular(20.0)),
          //               boxShadow: [
          //                 BoxShadow(
          //                   blurRadius: 12.0,
          //                   spreadRadius: 4.0,
          //                   color: Colors.black12,
          //                 )
          //               ],
          //               image: DecorationImage(
          //                   image: AssetImage("assets/image/develop.jpeg"),
          //                   fit: BoxFit.cover)),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
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
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 178.0, left: 250.0),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: 300,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            spreadRadius: 4.0,
                            color: Colors.black12,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/image/design.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Container(
                      width: _width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Text(
                              "Soliasisasi Program",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42.0),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                "Kami mensosialisasikan berbagai macam program",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black38,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            InkWell(
                              onTap: () {
                                // _launchURL();
                              },
                              child: Container(
                                height: 40.0,
                                width: 155.0,
                                decoration: const BoxDecoration(
                                    gradient: colors.primaryGradient,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: const Center(
                                  child: Text(
                                    "COMING SOON",
                                    style: TextStyle(
                                        color: colors.white,
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
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
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 178.0, left: 250.0),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: 300,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            spreadRadius: 4.0,
                            color: Colors.black12,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/image/sosialisasidakwah.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Container(
                      width: _width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Text(
                              "Edukasi dakwah ekonomi syariah",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42.0),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                "Kami membangun platform edukasi ekonomi syariah",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black38,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            InkWell(
                              onTap: () {
                                // _launchURL();
                              },
                              child: Container(
                                height: 40.0,
                                width: 155.0,
                                decoration: const BoxDecoration(
                                    gradient: colors.primaryGradient,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: const Center(
                                  child: Text(
                                    "COMING SOON",
                                    style: TextStyle(
                                        color: colors.white,
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  )
                ],
              ),
            ],
          ),
          //STACK2
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 178.0, left: 250.0),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: 300,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            spreadRadius: 4.0,
                            color: Colors.black12,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/image/design.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Container(
                      width: _width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Text(
                              "Fasilitas antar lembaga",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42.0),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                "Kami platform penyedia fasilitas silaturrahim antar lembaga",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black38,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            InkWell(
                              onTap: () {
                                // _launchURL();
                              },
                              child: Container(
                                height: 40.0,
                                width: 155.0,
                                decoration: const BoxDecoration(
                                    gradient: colors.primaryGradient,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: const Center(
                                  child: Text(
                                    "COMING SOON",
                                    style: TextStyle(
                                        color: colors.white,
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
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
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 178.0, left: 250.0),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: 300,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            spreadRadius: 4.0,
                            color: Colors.black12,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/image/develop.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Container(
                      width: _width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Text(
                              "Marketing produk",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42.0),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                "Kami menyediakan layanan marketing pemasaran produk bagi yayasan",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black38,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            InkWell(
                              onTap: () {
                                // _launchURL();
                              },
                              child: Container(
                                height: 40.0,
                                width: 155.0,
                                decoration: const BoxDecoration(
                                    gradient: colors.primaryGradient,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: const Center(
                                  child: Text(
                                    "COMING SOON",
                                    style: TextStyle(
                                        color: colors.white,
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  )
                ],
              ),
            ],
          ),
          //STACK3
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 178.0, left: 250.0),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: 300,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            spreadRadius: 4.0,
                            color: Colors.black12,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/image/design.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Container(
                      width: _width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Text(
                              "Aksesing dan Channelling",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42.0),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                "Untuk program pemerintah dan swasta",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black38,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            InkWell(
                              onTap: () {
                                // _launchURL();
                              },
                              child: Container(
                                height: 40.0,
                                width: 155.0,
                                decoration: const BoxDecoration(
                                    gradient: colors.primaryGradient,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: const Center(
                                  child: Text(
                                    "COMING SOON",
                                    style: TextStyle(
                                        color: colors.white,
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
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
          // Stack(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(top: 178.0, left: 250.0),
          //       child: Image.asset("assets/image/item1.png"),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(top: 40.0),
          //       child: Image.asset(
          //         "assets/image/item2.png",
          //         height: MediaQuery.of(context).size.height - 175,
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //     Padding(
          //       padding: EdgeInsets.only(
          //           top: MediaQuery.of(context).size.height - 175, left: 450),
          //       child: Image.asset(
          //         "assets/image/item3.png",
          //         //height: MediaQuery.of(context).size.height - 175,
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(top: 25, left: 550),
          //       child: Image.asset(
          //         "assets/image/item4.png",
          //         height: 120,
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //     Column(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Container(
          //           height: MediaQuery.of(context).size.height / 2,
          //           width: 300,
          //           decoration: const BoxDecoration(
          //               borderRadius: BorderRadius.only(
          //                   topLeft: Radius.circular(10.0),
          //                   topRight: Radius.circular(10.0),
          //                   bottomLeft: Radius.circular(10.0),
          //                   bottomRight: Radius.circular(10.0)),
          //               boxShadow: [
          //                 BoxShadow(
          //                   blurRadius: 12.0,
          //                   spreadRadius: 4.0,
          //                   color: Colors.black12,
          //                 )
          //               ],
          //               image: DecorationImage(
          //                   image: AssetImage("assets/image/develop.jpeg"),
          //                   fit: BoxFit.cover)),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(left: 55.0),
          //           child: Container(
          //             width: _width,
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 5.0, right: 35.0),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: <Widget>[
          //                   const SizedBox(
          //                     height: 5.0,
          //                   ),
          //                   const Text(
          //                     "Edukasi dakwah ekonomi syariah",
          //                     style: TextStyle(
          //                         fontFamily: "Sofia",
          //                         color: Colors.black,
          //                         fontWeight: FontWeight.w900,
          //                         fontSize: 42.0),
          //                   ),
          //                   const Padding(
          //                     padding:
          //                         EdgeInsets.symmetric(vertical: 20.0),
          //                     child: Text(
          //                       "Kami membangun platform edukasi ekonomi syariah",
          //                       style: TextStyle(
          //                           fontSize: 18.0,
          //                           color: Colors.black38,
          //                           fontFamily: "Sofia",
          //                           fontWeight: FontWeight.w500),
          //                     ),
          //                   ),
          //                   const SizedBox(
          //                     height: 30.0,
          //                   ),
          //                   InkWell(
          //                     onTap: () {
          //                       _launchURL();
          //                     },
          //                     child: Container(
          //                       height: 40.0,
          //                       width: 155.0,
          //                       decoration: const BoxDecoration(
          //                           gradient: colors.primaryGradient,
          //                           borderRadius: BorderRadius.all(
          //                               Radius.circular(20.0))),
          //                       child: const Center(
          //                         child: Text(
          //                           "COMING SOON",
          //                           style: TextStyle(
          //                               color: colors.white,
          //                               fontFamily: "Sofia",
          //                               fontWeight: FontWeight.w500,
          //                               fontSize: 14),
          //                         ),
          //                       ),
          //                     ),
          //                   )
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ),
          //         const SizedBox(
          //           height: 50.0,
          //         )
          //       ],
          //     ),
          //   ],
          // ),
          const SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
