import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ChatScreen extends StatefulWidget {

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(200, 0, 157, 223),
      body: Stack(
        children: [
          Center(
            child: Text(
              'This screen, chat screen',
              style: GoogleFonts.aladin(
                textStyle: Theme.of(context).textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 35,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
