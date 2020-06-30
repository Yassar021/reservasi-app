// part of 'pages.dart';
import 'package:flutter/material.dart';
import 'package:reservasi_app/shared/theme.dart';

class ConfirmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // note: header
        // Container(
        //     decoration: BoxDecoration(
        //         color: accentColor1,
        //         borderRadius: BorderRadius.only(
        //             bottomLeft: Radius.circular(20),
        //             bottomRight: Radius.circular(20))),
        //     padding: EdgeInsets.fromLTRB(defaultMargin, 25, defaultMargin, 25),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: <Widget>[
        //         Text(
        //           "Reservasion",
        //           style: whiteTextFont.copyWith(
        //             fontSize: 18,
        //             fontWeight: FontWeight.w500,
        //           ),
        //           textAlign: TextAlign.center,
        //         ),
        //       ],
        //     )),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            width: 320,
            // height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[500]),
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[350]),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Konfirmasi Pemesanan - workspace",
                    style: blackTextFont.copyWith(fontSize: 16),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(" No Reservasi : 1203132"),
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(" Workspace : My Office"),
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(" Tanggal : 14/02-2020"),
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(" Jam : 12.00"),
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(" Nama Tamu : yassar"),
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    " Menunggu Konfimasi",
                    style: TextStyle(color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            width: 320,
            // height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[500]),
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[350]),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Konfirmasi Pemesanan - workspace",
                    style: blackTextFont.copyWith(fontSize: 16),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(" No Reservasi : 1203132"),
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(" Workspace : My Office"),
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(" Tanggal : 14/02-2020"),
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(" Jam : 12.00"),
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(" Nama Tamu : yassar"),
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    " Telah di Konfimasi",
                    style: TextStyle(color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green[400]),
                      color: Colors.green[400],
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
