import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(200, 0, 157, 223),
      body: Stack(
        children: [
          Center(
            child: Text(
              'This screen, profile screen',
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
