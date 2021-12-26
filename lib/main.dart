import 'package:chat/screens/welcome/welcome_scene.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual);
  SystemChrome.restoreSystemUIOverlays();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .whenComplete(() {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat with me',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.system,
      home: const WelcomeScreen(),
    );
  }
}
