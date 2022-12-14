import 'package:flutter/material.dart';
import 'package:shopigo/pages/home_page.dart';
import 'package:shopigo/pages/login_page.dart';
import 'package:shopigo/pages/signup_page.dart';
import 'package:shopigo/utils/routes.dart';

import 'utils/mytheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoutes,
      routes: {
        MyRoutes.homeRoutes: (context) => HomePage(),
        MyRoutes.loginRoutes: (context) => LoginPage(),
        MyRoutes.signupRoutes: (context) => SignupPage(),
      },
    );
  }
}
