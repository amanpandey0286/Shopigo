import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:shopigo/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).backgroundColor,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0),
                child: Image.asset("assets/images/Credit Card Payment.gif"),
              ),
              const Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter user name",
                        labelText: "User Name",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoutes);
                },
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(120, 40)),
                    shape: MaterialStateProperty.all(StadiumBorder())),
                child: Row(
                  children: const [
                    Text(
                      " Sign In ",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Icon(CupertinoIcons.arrow_right),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "Or Sign In using",
                style: TextStyle(fontSize: 13.0),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (() {}),
                      splashColor: Color(0xff5bd407),
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        "assets/icons/google.png",
                        height: 40.0,
                        width: 40.0,
                      ),
                    ),
                    InkWell(
                      onTap: (() {}),
                      splashColor: Color(0xff5bd407),
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        "assets/icons/twitter.png",
                        height: 40.0,
                        width: 40.0,
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.signupRoutes);
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff5bd407),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
