import 'package:flutter/material.dart';
import 'package:reservasi_app/detail_home_page.dart';
import 'package:reservasi_app/edit_profile.dart';
import 'package:reservasi_app/main_page.dart';
import 'package:reservasi_app/pesan_workspace.dart';
import 'package:reservasi_app/sign_in_page.dart';
import 'package:reservasi_app/sign_up_page.dart';
import 'package:reservasi_app/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: <String, WidgetBuilder>{
        '/splashScreen': (BuildContext context) => new SplashPage(),
        '/signInPage': (BuildContext context) => new SignInPage(),
        '/signUpPage': (BuildContext context) => new SignUpPage(),
        '/mainPage': (BuildContext context) => new MainPage(),
        '/detailPage': (BuildContext context) => new DetailHomePage(),
        '/pesanWorkspace': (BuildContext context) => new PesanWorkspace(),
        '/editProfile': (BuildContext context) => new EditProfile()
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
    );
  }
}
