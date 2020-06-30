import 'package:flutter/material.dart';
import 'package:reservasi_app/shared/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            width: 320,
            // height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: accentColor1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/detailPage');
                  },
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage("assets/ic_tickets.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(5))),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Hello workspace",
                        style: blackTextFont.copyWith(fontSize: 16),
                        overflow: TextOverflow.clip,
                      ),
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
                        Icon(Icons.timer),
                        Text(
                          "08:00 - 17:00",
                          style: blackTextFont.copyWith(fontSize: 14),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
