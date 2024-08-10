import "package:flutter/material.dart";

import "../../../../utils/constant/colors.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.whiteBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: TColors.primaryColors,
            size: 35,
          ),
        ),
        title: Text(
          "login user",
          style: TextStyle(
            color: TColors.primaryColors,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome\n Back",
                style: TextStyle(
                    color: TColors.textPrimaryColors,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "matricule",
                    prefixIcon: Icon(
                      Icons.person,
                      color: TColors.primaryColors,
                      size: 30,
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "password",
                  prefixIcon: Icon(
                    Icons.lock,
                    color: TColors.primaryColors,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
