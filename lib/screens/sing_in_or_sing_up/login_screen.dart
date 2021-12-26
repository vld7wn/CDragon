import 'package:chat/components/logo.dart';
import 'package:chat/screens/sing_in_or_sing_up/components/custom_textfield.dart';
import 'package:chat/screens/sing_in_or_sing_up/sing_up_screen.dart';
import 'package:flutter/material.dart';

import '../../components/screen_navigator.dart';
import '../main/main_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailCTRL = TextEditingController();
  final TextEditingController _passCTRL = TextEditingController();

  bool isShowPassword = false;

  passwordVisibility() {
    setState(() {
      isShowPassword = true;
    });
    Future.delayed(const Duration(seconds: 3)).then((value) {
      setState(() {
        isShowPassword = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(200, 0, 157, 223),
      body: Center(
        child: SingleChildScrollView(
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: SizedBox(
              height: _height,
              width: _width,
              child: Column(
                children: [
                  logo(),
                  Form(
                    key: _formKey,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTF(
                            labelText: 'Email',
                            controller: _emailCTRL,
                            labelStyle:
                                const TextStyle(color: Colors.cyanAccent),
                            prefixIcon: const Icon(Icons.email,
                                color: Colors.cyanAccent),
                          ),
                          CustomTF(
                            labelText: 'Password',
                            controller: _passCTRL,
                            labelStyle:
                                const TextStyle(color: Colors.cyanAccent),
                            prefixIcon: const Icon(Icons.lock,
                                color: Colors.cyanAccent),
                            obscureText: !isShowPassword,
                            suffixIcon: IconButton(
                              onPressed: () {
                                passwordVisibility();
                              },
                              icon: isShowPassword
                                  ? const Icon(Icons.visibility,
                                      color: Colors.cyanAccent)
                                  : const Icon(Icons.visibility_off,
                                      color: Colors.cyanAccent),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 8),
                              child: InkWell(
                                onTap: () {},
                                child: const Text(
                                  'Forget password?',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.cyanAccent),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: ElevatedButton(
                              onPressed: () {
                                navigatorToNextScreen(context, MainScreen());
                              },
                              child: const Text(
                                'Login',
                                textAlign: TextAlign.center,
                              ),
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(150, 40),
                                primary: Colors.lightBlue,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(13.5),
                                  side: const BorderSide(
                                      style: BorderStyle.solid,
                                      color: Colors.tealAccent,
                                      width: 0.6),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Don`t have account? ',style: TextStyle(
                                  fontSize: 12, color: Colors.white)),
                                  InkWell(
                                    onTap: () {
                                      navigatorToNextScreen(
                                          context, const SingUpScreen());
                                    },
                                    child: const Text(
                                      'SingUp',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.cyanAccent),
                                    ),
                                  ),
                                ],
                              ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
