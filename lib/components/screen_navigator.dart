import 'package:flutter/material.dart';

navigatorToNextScreen(context, nextScreen){
  Navigator.push(context, MaterialPageRoute(builder: (context) => nextScreen));
}