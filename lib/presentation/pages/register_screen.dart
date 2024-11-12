import 'package:books/presentation/widget/elevated_button_style.dart';
import 'package:books/presentation/widget/title_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/constant/colors.dart';
import '../widget/bottom_register.dart';
import '../widget/curve_header.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isObscrure = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CurveHeader(
              size: size,
            ),
            Flexible(
              child: Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi!",
                          style: textStyle,
                        ),
                        Text(
                          "Register",
                          style: subTitle(),
                        ),
                        Text(
                          "Register to read book and takl with other people with same center of interest",
                          style: descriptionStyle(),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "name",
                            prefixIcon: Icon(
                              Icons.person,
                              size: 25,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            labelText: "email",
                            prefixIcon: Icon(
                              Icons.email,
                              size: 25,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          obscureText: _isObscrure,
                          decoration: InputDecoration(
                            labelText: "password",
                            prefixIcon: const Icon(
                              Icons.lock,
                              size: 25,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () => setState(() {
                                if (_isObscrure == false) {
                                  _isObscrure = true;
                                } else {
                                  _isObscrure = false;
                                }
                              }),
                              icon: _isObscrure
                                  ? Icon(
                                      Icons.remove_red_eye,
                                      size: 25,
                                      color: TColors.buttonColors,
                                    )
                                  : Icon(
                                      Icons.lock_open_rounded,
                                      size: 25,
                                      color: TColors.buttonColors,
                                    ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            context.go('/confirmation');
                          },
                          style: elevetadeButtonSytle(context),
                          child: Text(
                            "Register",
                            style: TextStyle(
                                color: TColors.buttonColors,
                                fontSize: 20,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const BottomRegister(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
