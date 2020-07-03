import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reservasi_app/home_page.dart';
import 'package:reservasi_app/profile_page.dart';
import 'package:reservasi_app/shared/theme.dart';
import 'services/api.dart';

import 'confirm_page.dart';

// ignore: must_be_immutable
class MainPage extends StatefulWidget {
  String token;
  MainPage({this.token});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ApiService apiService = ApiService();

  int bottomNavBarIndex;
  PageController pageController;
  bool fetch = true;
  List work, reservasi;
  Map user;

  @override
  void initState() {
    super.initState();
    apiService.getData(widget.token).then((value) {
      setState(() {
        fetch = false;
        work = value;
      });
    });

    apiService.getUser(widget.token).then((value) {
      setState(() {
        fetch = false;
        user = value;
        reservasi = value["reservasi"];
      });
    });

    bottomNavBarIndex = 0;
    pageController = PageController(initialPage: bottomNavBarIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(color: accentColor1),
        SafeArea(
          child: Container(
            color: Color(0xFFF6F7F9),
          ),
        ),
        PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              bottomNavBarIndex = index;
            });
          },
          children: <Widget>[
            fetch
                ? CircularProgressIndicator()
                : HomePage(
                    data: work,
                    token: widget.token,
                  ),
            fetch
                ? CircularProgressIndicator()
                : ConfirmPage(
                    data: reservasi,
                  ),
            fetch
                ? CircularProgressIndicator()
                : ProfilePage(
                    data: user,
                  )
          ],
        ),
        createCustomBottomNavbar(),
      ],
    ));
  }

  Widget createCustomBottomNavbar() => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              selectedItemColor: mainColor,
              unselectedItemColor: Color(0xFFE5E5E5),
              currentIndex: bottomNavBarIndex,
              onTap: (index) {
                setState(() {
                  bottomNavBarIndex = index;
                  pageController.jumpToPage(index);
                });
              },
              items: [
                BottomNavigationBarItem(
                    title: Text("Home",
                        style: GoogleFonts.raleway(
                            fontSize: 13, fontWeight: FontWeight.w600)),
                    icon: Icon(Icons.domain)),
                BottomNavigationBarItem(
                    title: Text("My Reservasion",
                        style: GoogleFonts.raleway(
                            fontSize: 13, fontWeight: FontWeight.w600)),
                    icon: Icon(Icons.update)),
                BottomNavigationBarItem(
                    title: Text("Profile",
                        style: GoogleFonts.raleway(
                            fontSize: 13, fontWeight: FontWeight.w600)),
                    icon: Icon(Icons.account_circle))
              ]),
        ),
      );
}
