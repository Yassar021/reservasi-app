import 'package:flutter/material.dart';
import 'package:reservasi_app/shared/theme.dart';

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  Map data;

  ProfilePage({this.data});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // note: header
        Container(
          decoration: BoxDecoration(
              color: accentColor1,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          padding: EdgeInsets.fromLTRB(defaultMargin, 25, defaultMargin, 25),
          child: Column(
            children: <Widget>[
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/user_pic.png"),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                data["name"],
                style: whiteTextFont.copyWith(fontSize: 20),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: <Widget>[
                  Icon(Icons.location_on),
                  Text(
                    data["alamat"],
                    style: blackTextFont.copyWith(fontSize: 14),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: <Widget>[
                  Icon(Icons.call),
                  Text(
                    data["telp"],
                    style: blackTextFont.copyWith(fontSize: 14),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: <Widget>[
                  Icon(Icons.assignment_ind),
                  Text(
                    data["bio"],
                    style: blackTextFont.copyWith(fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 46,
                  margin: EdgeInsets.only(
                    left: 20,
                    top: 20,
                  ),
                  child: RaisedButton(
                    child: Text(
                      " Keluar ",
                      style: whiteTextFont.copyWith(fontSize: 16),
                    ),
                    color: Colors.red[700],
                    onPressed: () {
                      Navigator.popAndPushNamed(context, '/splashScreen');
                    },
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
