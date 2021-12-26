import 'package:chat/components/screen_navigator.dart';
import 'package:chat/screens/sing_in_or_sing_up/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/constants.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(200, 0, 157, 223),
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                const Spacer(
                  flex: 1,
                ),
                Image.asset(
                  "assets/images/dkflutter.png",
                  width: double.infinity,
                  fit: BoxFit.fitHeight,
                ),
                const Spacer(),
                Text(
                  "Welcome to our freedom \nmessage app",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.blackOpsOne(
                    textStyle: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Text(
                  "Freedom talk any person of your\nmother language.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.color
                        ?.withOpacity(0.64),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: AutomaticNotchedShape(
          const RoundedRectangleBorder(),
          BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(13.5),
            side: const BorderSide(
              style: BorderStyle.solid,
              color: Colors.cyanAccent,
              width: 0.9,
            ),
          ),
        ),
        color: kSecondaryColor,
        child: Container(
          height: 60.0,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          navigatorToNextScreen(context, LoginScreen());
        },
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(13.5),
          side: const BorderSide(
              style: BorderStyle.solid, color: Colors.tealAccent, width: 0.9),
        ),
        label: Row(
          children: <Widget>[
            ButtonText(),
            ButtonIcon(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class ButtonIcon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.arrow_forward_ios,
      size: 15,
      color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.8),
    );
  }
}

class ButtonText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text(
      "Skip",
      style: Theme.of(context).textTheme.bodyText1?.copyWith(
          color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.8),
          fontWeight: FontWeight.bold),
    );
  }
}
