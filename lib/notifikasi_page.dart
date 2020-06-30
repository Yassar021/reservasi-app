import 'package:flutter/material.dart';
import 'package:reservasi_app/shared/theme.dart';

class NotifPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // note: header

        SizedBox(
          height: 20,
        ),
        Column(
          children: <Widget>[
            Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "My Workspace",
                      style: blackTextFont.copyWith(fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "Notifikasi baru pada pesananmu",
                      style: blackTextFont.copyWith(fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "Pesanan kamu sudah diterima, mohon datang sesuai\ndengan waktu yang ditentukan",
                      style: blackTextFont.copyWith(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
