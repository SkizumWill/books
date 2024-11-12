import 'package:books/core/utils/constant/colors.dart';
import 'package:flutter/material.dart';

import '../widget/auth/bottom_login_page.dart';
import '../widget/curve_header.dart';
import '../widget/elevated_button_style.dart';
import '../widget/title_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? _ischecked = false;
  bool _isObscured=true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          CurveHeader(size: size),
          Flexible(
            child: Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SingleChildScrollView(
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style: textStyle,
                      ),
                      Text(
                        "Back!",
                        style: subTitle(),
                      ),
                      Text(
                        "sign in to acces for your book and discuss with people who have the same ideas ",
                        style: descriptionStyle(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
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
                        decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: const Icon(Icons.lock, size: 25),
                          
                            suffixIcon: IconButton(
                              onPressed: () => setState(() {
                                if (_isObscured == false) {
                                  _isObscured = true;
                                } else {
                                  _isObscured = false;
                                }
                              }),
                              icon: _isObscured
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
                        onPressed: () {},
                        style: elevetadeButtonSytle(context),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: TColors.buttonColors,
                            fontFamily: "Roboto",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: _ischecked,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _ischecked = newValue;
                                  });
                                },
                                activeColor: TColors.buttonColors,
                              ),
                              Text(
                                "Remenber me",
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(
                                color: TColors.buttonColors,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const BottomLoginPage()
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }


  
}
