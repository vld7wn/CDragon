import 'package:chat/components/logo.dart';
import 'package:chat/screens/main/main_screen.dart';
import 'package:chat/screens/sing_in_or_sing_up/login_screen.dart';
import 'package:flutter/material.dart';
import '../../components/screen_navigator.dart';
import 'components/custom_textfield.dart';


class SingUpScreen extends StatefulWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  _SingInScreen createState() => _SingInScreen();
}

class _SingInScreen extends State<SingUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameCTRL = TextEditingController();
  final TextEditingController _emailCTRL = TextEditingController();
  final TextEditingController _passCTRL = TextEditingController();
  final TextEditingController _cPassCTRL = TextEditingController();

  bool isShowPassword = false;

  passwordVisibility() {
    setState(() {isShowPassword = true;});
    Future.delayed(const Duration(seconds: 3)).then((value) {
      setState(() {isShowPassword = false;});
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTF(
                          labelText: 'Name',
                          controller: _nameCTRL,
                          labelStyle: const TextStyle(color: Colors.cyanAccent),
                          prefixIcon:
                          const Icon(Icons.email, color: Colors.cyanAccent),
                        ),
                        CustomTF(
                          labelText: 'Email',
                          controller: _emailCTRL,
                          labelStyle: const TextStyle(color: Colors.cyanAccent),
                          prefixIcon:
                          const Icon(Icons.email, color: Colors.cyanAccent),
                        ),
                        CustomTF(
                          labelText: 'Password',
                          controller: _passCTRL,
                          labelStyle: const TextStyle(color: Colors.cyanAccent),
                          prefixIcon:
                          const Icon(Icons.lock, color: Colors.cyanAccent),
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
                        CustomTF(
                          labelText: 'Confirm password',
                          controller: _cPassCTRL,
                          labelStyle: const TextStyle(color: Colors.cyanAccent),
                          prefixIcon:
                          const Icon(Icons.lock, color: Colors.cyanAccent),
                          obscureText: !isShowPassword,
                          validator: (val){
                            if (val!.isEmpty) {
                              return 'Empty';
                            } else if (val != _passCTRL.text) {
                              return 'Password is not equals!';
                            }
                          },
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {navigatorToNextScreen(context, LoginScreen());
                              },
                              child: const Text(
                                'Do you register? Login',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.cyanAccent),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            navigatorToNextScreen(context, MainScreen());
                          },
                          child: const Text(
                            'SignUp',
                            textAlign: TextAlign.center,
                          ),
                          style: ElevatedButton.styleFrom(
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
                      ],
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
