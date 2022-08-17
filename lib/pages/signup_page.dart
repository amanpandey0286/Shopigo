import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopigo/utils/routes.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

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
            Text(
              "Welcome To Shopigo",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Name", labelText: "Name"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Email ID", labelText: "Email ID"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(StadiumBorder()),
                  fixedSize: MaterialStateProperty.all(Size(120, 40))),
              child: Row(
                children: [
                  Text(
                    "Sign Up ",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Icon(CupertinoIcons.arrow_right)
                ],
              ),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).backgroundColor),
                  shape: MaterialStateProperty.all(StadiumBorder()),
                  fixedSize: MaterialStateProperty.all(Size(100, 40))),
              child: Text(
                "Sign In ",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xff5bd407),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
