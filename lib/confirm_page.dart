// part of 'pages.dart';
import 'package:flutter/material.dart';
import 'package:reservasi_app/shared/theme.dart';

// ignore: must_be_immutable
class ConfirmPage extends StatelessWidget {
  List data;
  ConfirmPage({this.data});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20),
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
                  child: Text(" No Reservasi : ${data[index]["id"]}"),
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(" Workspace : ${data[index]["nama"]}"),
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(" Tanggal : ${data[index]["tanggal"]}"),
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(" Nama Tamu : ${data[index]["tamu"]}"),
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
        );
      },
    );
  }
}
