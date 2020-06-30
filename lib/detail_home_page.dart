import 'package:flutter/material.dart';
import 'package:reservasi_app/shared/theme.dart';

class DetailHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 56,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/mainPage');
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Text("Hello Workspace",
                      style: blackTextFont.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      )),
                ),
                Container(
                  // color: Colors.black,
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/ic_tickets.png"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(height: 16),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.format_align_right),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Fasilitas :",
                          style: blackTextFont.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on),
                        Text(
                          "jl. mangga no 28",
                          style: blackTextFont.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.work),
                        Text(
                          "4 Ruangan",
                          style: blackTextFont.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        Text(
                          "08:00 - 17:00",
                          style: blackTextFont.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        Text(
                          "50. 000",
                          style: blackTextFont.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.call),
                        Text(
                          "085489345999",
                          style: blackTextFont.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green[400],
                          ),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Tersedia",
                            style: whiteTextFont.copyWith(
                              fontSize: 14,
                              // backgroundColor: Colors.green[400],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Center(
                  child: Container(
                    width: 300,
                    height: 46,
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: RaisedButton(
                      child: Text(
                        " Pesan Sekarang ",
                        style: whiteTextFont.copyWith(fontSize: 16),
                      ),
                      color: mainColor,
                      onPressed: () {
                        Navigator.pushNamed(context, '/pesanWorkspace');
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
