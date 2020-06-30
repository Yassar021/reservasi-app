import 'package:flutter/material.dart';
import 'package:reservasi_app/shared/theme.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isEmailValid = false;
  bool isPasswordValid = false;
  bool isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    // context
    //     .bloc<ThemeBloc>()
    //     .add(ChangeTheme(ThemeData().copyWith(primaryColor: accentColor2)));
    return WillPopScope(
      onWillPop: () {
        // context.bloc<PageBloc>().add(GoToSplashPage());

        return;
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: ListView(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 70,
                      child: Image.asset("assets/logo2.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 70, bottom: 40),
                      child: Text(
                        "Welcome Back\nExplorer",
                        style: blackTextFont.copyWith(fontSize: 20),
                      ),
                    ),
                    TextField(
                      onChanged: (text) {},
                      controller: emailController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "Email Address",
                          hintText: "Email Address"),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      onChanged: (text) {
                        setState(() {
                          isPasswordValid = text.length >= 6;
                        });
                      },
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "Password",
                          hintText: "Password"),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Center(
                      child: Container(
                        width: 300,
                        height: 46,
                        margin: EdgeInsets.only(top: 10),
                        child: RaisedButton(
                          child: Text(
                            " Masuk ",
                            style: whiteTextFont.copyWith(fontSize: 16),
                          ),
                          color: mainColor,
                          onPressed: () {
                            Navigator.pushNamed(context, '/mainPage');
                          },
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 300,
                        height: 46,
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: RaisedButton(
                          child: Text(
                            " Buat Akun ",
                            style: whiteTextFont.copyWith(fontSize: 16),
                          ),
                          color: accentColor2,
                          onPressed: () {
                            Navigator.pushNamed(context, '/signUpPage');
                          },
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.only(top: 40, bottom: 30),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
