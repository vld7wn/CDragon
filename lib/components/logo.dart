import 'package:flutter/cupertino.dart';

Widget logo() {
  return Padding(
    padding: const EdgeInsets.only(top: 70, bottom: 15),
    child: Align(
      child: Image.asset(
        "assets/images/dk.png",
      ),
    ),
  );
}
