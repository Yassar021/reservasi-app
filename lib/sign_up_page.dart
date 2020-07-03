import 'package:flutter/material.dart';
import 'package:reservasi_app/services/api.dart';
import 'package:reservasi_app/shared/theme.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  ApiService apiService = ApiService();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController telpController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();

  //   nameController.text = widget.registrationData.name;
  //   emailController.text = widget.registrationData.email;
  // }

  bool proses = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // context.bloc<PageBloc>().add(GoToSplashPage());

        return;
      },
      child: Scaffold(
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
                            onTap: () {},
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Center(
                          child: Text("Sign Up",
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
                    controller: nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Full Name",
                        hintText: "Full Name"),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Email",
                        hintText: "Email"),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    controller: genderController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Gender",
                        hintText: "Gender"),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    controller: alamatController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Alamat",
                        hintText: "Alamat"),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    controller: telpController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Telpon",
                        hintText: "Telpon"),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Password",
                        hintText: "Password"),
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
                        child: proses
                            ? CircularProgressIndicator()
                            : Text(
                                " Daftar ",
                                style: whiteTextFont.copyWith(fontSize: 16),
                              ),
                        color: mainColor,
                        onPressed: () {
                          setState(() {
                            proses = true;
                          });
                          apiService
                              .register(
                                  emailController.text,
                                  passwordController.text,
                                  nameController.text,
                                  genderController.text,
                                  alamatController.text,
                                  telpController.text)
                              .then((value) {
                            setState(() {
                              proses = false;
                            });
                            if (value["error"]) {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text("Opps"),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: <Widget>[
                                        Text(value["message"] +
                                            ", periksa data!"),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text("Selamat"),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: <Widget>[
                                        Text(value["message"]),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                              Navigator.pushReplacementNamed(
                                  context, '/signInPage');
                            }
                          });
                        },
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
