import 'package:flutter/material.dart';
import 'package:chat/components/constants.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final EdgeInsets padding;

  const PrimaryButton({
    Key? key,
    required this.text,
    required this.press,
    this.padding = const EdgeInsets.all(kDefaultPadding * 0.3),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(13.5),
        side: const BorderSide(
            style: BorderStyle.solid,
            color: Colors.tealAccent,
            width: 0.5),
      ),
      padding: padding,
      color: kSecondaryColor,
      minWidth: double.infinity,
      onPressed: press,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
          color: Theme.of(context)
              .textTheme
              .bodyText1
              ?.color
              ?.withOpacity(0.8),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
