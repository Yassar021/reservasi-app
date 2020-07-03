import 'package:flutter/material.dart';
import 'package:reservasi_app/detail_home_page.dart';
import 'package:reservasi_app/shared/theme.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List data;
  String token;

  HomePage({this.data, this.token});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Center(
          child: Container(
            margin: EdgeInsets.only(top: 10),
            width: 320,
            // height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: accentColor1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailHomePage(
                                  data: data[index],
                                  token: this.token,
                                )));
                  },
                  child: Container(
                    height: 150,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          data[index]["nama"],
                          style: blackTextFont.copyWith(fontSize: 16),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          // image: DecorationImage(
                          //     image: AssetImage("assets/ic_tickets.png"),
                          //     fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on),
                        Text(
                          data[index]["alamat"],
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
                          data[index]["telp"],
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
                          data[index]["harga"].toString(),
                          style: blackTextFont.copyWith(fontSize: 14),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
