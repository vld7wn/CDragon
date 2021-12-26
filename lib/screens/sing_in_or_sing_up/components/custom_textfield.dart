import 'package:flutter/material.dart';


class CustomTF extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText;
  final String? labelText;
  final TextStyle? labelStyle;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTF(
      {Key? key,
      this.controller,
      this.keyboardType,
      this.validator,
      this.obscureText = false,
      this.labelText,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.labelStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      decoration: const BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.all(Radius.circular(13.5))),
      child: TextFormField(
        cursorColor: Colors.cyanAccent,
        controller: controller,
        keyboardType: keyboardType,
        validator: validator,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.cyanAccent,
                  style: BorderStyle.solid,
                  width: 1.5),
              borderRadius: BorderRadius.all(Radius.circular(13.5))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.cyanAccent,
                  style: BorderStyle.solid,
                  width: 1.5),
              borderRadius: BorderRadius.all(Radius.circular(13.5))),
          labelText: labelText,
          labelStyle: labelStyle,
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
