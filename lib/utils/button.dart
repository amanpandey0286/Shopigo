import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              Theme.of(context).backgroundColor),
          fixedSize: MaterialStateProperty.all(Size(120, 40)),
          shape: MaterialStateProperty.all(StadiumBorder())),
      child: const Text(
        " Sign Up ",
        style: TextStyle(
          color: Color(0xff5bd407),
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}