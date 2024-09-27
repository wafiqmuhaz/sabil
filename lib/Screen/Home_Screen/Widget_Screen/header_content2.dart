// import 'dart:html';
import 'dart:ui';

import 'package:url_launcher/url_launcher.dart';
import 'package:caris/Screen/Home_Screen/Widget_Screen/header_content1.dart';
import 'package:flutter/material.dart';
import 'package:caris/Style/Style.dart';

import '../../Service_Screen/Service_Screen.dart';

class HeaderContent2 extends StatefulWidget {
  HeaderContent2({Key? key}) : super(key: key);

  @override
  _HeaderContent2State createState() => _HeaderContent2State();
}

class _HeaderContent2State extends State<HeaderContent2> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopHeaderContent2();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeaderContent2();
        } else {
          return MobileHeaderContent2();
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

class DesktopHeaderContent2 extends StatelessWidget {
  Widget _card(String img, title, desc, BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        height: 170.0,
        width: _width / 5.38,
        decoration: BoxDecoration(
          color: colors.purpleDark,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                img,
                height: 25.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                title,
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  desc,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.white54,
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        color: Color(0xFF31295D),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 48.0, left: 50.0),
              child: Image.asset("assets/image/itemWhite1.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 190.0, left: 550.0),
              child: Image.asset(
                "assets/image/itemWhite2.png",
                height: 65,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 525, left: 10),
              child: Image.asset(
                "assets/image/itemWhite3.png",
                //height: MediaQuery.of(context).size.height - 175,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 55.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 175,
                    width: _width / 2.2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: [
                              Text(
                                "PROGRAM KAMI",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.white60,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.0),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Image.asset(
                                  "assets/image/itemWhite4.png",
                                  height: 12,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 14.0,
                          ),
                          Text(
                            "PROGRAM UNGGULAN YANG KAMI DIRIKAN",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 42.0),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          InkWell(
                            onTap: () {
                              // _launchURL();
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new ServiceScreen()));
                            },
                            child: Container(
                              height: 40.0,
                              width: 155.0,
                              decoration: BoxDecoration(
                                  gradient: colors.primaryGradient,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              child: Center(
                                child: Text(
                                  "LIHAT SELENGKAPNYA",
                                  style: TextStyle(
                                      color: Colors.black,
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
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          _card(
                              "assets/image/design.png",
                              "Soliasisasi Program",
                              "Kami mensosialisasikan berbagai macam program",
                              context),
                          _card(
                              "assets/image/coding.png",
                              "Edukasi dakwah ekonomi syariah",
                              "Kami membangun platform edukasi ekonomi syariah",
                              context),
                        ],
                      ),
                      Row(
                        children: [
                          _card(
                              "assets/image/bug.png",
                              "Fasilitas antar lembaga",
                              "Kami platform penyedia fasilitas silaturrahim antar lembaga",
                              context),
                          _card(
                              "assets/image/ai.png",
                              "Marketing produk",
                              "Kami menyediakan layanan marketing pemasaran produk bagi yayasan",
                              context),
                        ],
                      ),
                      Row(
                        children: [
                          _card(
                              "assets/image/bug.png",
                              "Aksesing dan Channelling",
                              "Untuk program pemerintah dan swasta",
                              context),
                          // _card(
                          //     "assets/image/ai.png",
                          //     "Marketing produk yayasan",
                          //     "Kami menyediakan layanan marketing pemasaran produk bagi yayasan",
                          //     context),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileHeaderContent2 extends StatelessWidget {
  @override
  Widget _card(String img, title, desc, BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        height: 230.0,
        width: _width / 3,
        decoration: BoxDecoration(
          color: colors.purpleDark,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                img,
                height: 25.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  title,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  desc,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.white54,
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Container(
          color: Color(0xFF31295D),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 48.0, left: 50.0),
                child: Image.asset("assets/image/itemWhite1.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 190.0, left: 550.0),
                child: Image.asset(
                  "assets/image/itemWhite2.png",
                  height: 65,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 525, left: 10),
                child: Image.asset(
                  "assets/image/itemWhite3.png",
                  //height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0, right: 20.0),
                    child: Container(
                      height: 400.0,
                      width: _width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  "PROGRAM KAMI",
                                  style: TextStyle(
                                      fontFamily: "Sofia",
                                      color: Colors.white60,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.0),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Image.asset(
                                    "assets/image/itemWhite4.png",
                                    height: 12,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 14.0,
                            ),
                            Text(
                              "PROGRAM UNGGULAN YANG KAMI DIRIKAN",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 35.0),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                    pageBuilder: (_, __, ___) =>
                                        new ServiceScreen()));
                              },
                              child: Container(
                                height: 40.0,
                                width: 155.0,
                                decoration: BoxDecoration(
                                    gradient: colors.primaryGradient,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: Center(
                                  child: Text(
                                    "LIHAT",
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
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            _card(
                                "assets/image/design.png",
                                "Soliasisasi Program",
                                "Kami mensosialisasikan berbagai macam program",
                                context),
                            _card(
                                "assets/image/coding.png",
                                "Software",
                                "Kami membangun platform edukasi ekonomi syariah",
                                context),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            _card(
                                "assets/image/bug.png",
                                "Fasilitas antar lembaga",
                                "Kami platform penyedia fasilitas silaturrahim antar lembaga",
                                context),
                            _card(
                                "assets/image/ai.png",
                                "Marketing produk",
                                "Kami menyediakan layanan marketing pemasaran produk bagi yayasan",
                                context),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            _card(
                                "assets/image/bug.png",
                                "Aksesing dan Channelling",
                                "Untuk program pemerintah dan swasta",
                                context),
                            // _card(
                            //     "assets/image/ai.png",
                            //     "Marketing produk",
                            //     "Kami menyediakan layanan marketing pemasaran produk bagi yayasan",
                            //     context),
                          ],
                        ),
                        SizedBox(
                          height: 100.0,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
