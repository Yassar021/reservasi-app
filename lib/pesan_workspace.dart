import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:datetime_picker_formfield/time_picker_formfield.dart';
import 'package:reservasi_app/shared/theme.dart';

class PesanWorkspace extends StatelessWidget {
  final format = DateFormat("yyyy-MM-dd HH:mm");

  final dateFormat = DateFormat("EEEE, MMMM d, yyyy 'at' h:mma");
  final timeFormat = DateFormat("h:mm a");
  DateTime date;
  TimeOfDay time;

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
                  margin: EdgeInsets.only(top: 20, bottom: 22),
                  height: 56,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/detailPage');
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Center(
                        child: Text("Pemesanan Workspace",
                            style: blackTextFont.copyWith(fontSize: 20),
                            textAlign: TextAlign.center),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
                TextField(
                  // controller: nameController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.account_circle),
                    labelText: "Full Name",
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  // controller: emailController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.work),
                    labelText: "Name Workspace",
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Column(children: <Widget>[
                    // Text('Pilih Waktu yang ingin anda gunakan'),
                    DateTimeField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.date_range),
                        hintText: 'Pilih Waktu yang anda inginkan',
                      ),
                      format: format,
                      onShowPicker: (context, currentValue) async {
                        final date = await showDatePicker(
                            context: context,
                            firstDate: DateTime(1900),
                            initialDate: currentValue ?? DateTime.now(),
                            lastDate: DateTime(2100));
                        if (date != null) {
                          final time = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.fromDateTime(
                                currentValue ?? DateTime.now()),
                          );
                          return DateTimeField.combine(date, time);
                        } else {
                          return currentValue;
                        }
                      },
                    ),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 300,
                    height: 46,
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: RaisedButton(
                      child: Text(
                        " Pesan ",
                        style: whiteTextFont.copyWith(fontSize: 16),
                      ),
                      color: mainColor,
                      onPressed: () {
                        Navigator.pushNamed(context, '/mainPage');
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DateTimePickerFormField {}
