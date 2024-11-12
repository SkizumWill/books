import 'package:books/presentation/widget/form_confirmation_code.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/constant/colors.dart';
import '../widget/elevated_button_style.dart';
import '../widget/title_style.dart';

class ConfirmationScreenCode extends StatelessWidget {
  const ConfirmationScreenCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.go('/register'),
          icon: Icon(Icons.arrow_back_ios_new_outlined,
              size: 25, color: TColors.primaryColors),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: TColors.whiteBackground,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Verification Code",
                      style: textStyle,
                    ),
                    Text(
                      "we have sent the code verification to",
                      style: descriptionStyle(),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "wf********@gmail.com",
                            style: TextStyle(
                              color: TColors.textPrimaryColors,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: " change email account",
                            style: TextStyle(
                              color: TColors.buttonColors,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => context.go('/register'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const FormConfirmationCode(),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("value is 1452"),
                      behavior: SnackBarBehavior.floating,
                      showCloseIcon: true,
                      dismissDirection: DismissDirection.startToEnd,
                    ),
                  );
                  context.go('/home');
                },
                style: elevetadeButtonSytle(context),
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: TColors.buttonColors,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
