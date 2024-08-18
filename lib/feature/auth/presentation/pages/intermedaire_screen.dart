import 'package:books/utils/constant/colors.dart';
import 'package:flutter/material.dart';

import '../widget/custom_clipper_widget.dart';

class IntermedaireScreen extends StatelessWidget {
  const IntermedaireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.textSecondColors,
      body: Column(
        children: [
          ClipPath(
            clipper: CustomClipperWidget(),
            child: Container(
              decoration: BoxDecoration(
                color: TColors.textSecondColors,
                image: const DecorationImage(
                  image: AssetImage("asset/image/background.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              height: 300,
              width: double.infinity,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 300,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: TColors.primaryColors,
                    padding: const EdgeInsets.all(10),
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.95, 45),
                    maximumSize:
                        Size(MediaQuery.of(context).size.width * 0.95, 45),
                    fixedSize:
                        Size(MediaQuery.of(context).size.width * 0.95, 45),
                    elevation: 4,
                    shadowColor: TColors.textSecondColors.withOpacity(0.5),
                  ),
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: TColors.buttonColors,
                      fontFamily: "Roboto",
                      fontSize: 19,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: TColors.buttonColors,
                      padding: const EdgeInsets.all(10),
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 0.95, 45),
                      maximumSize:
                          Size(MediaQuery.of(context).size.width * 0.95, 45),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.95, 65),
                      elevation: 4,
                      shadowColor: TColors.textSecondColors.withOpacity(0.5),
                      shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      )),
                  child: Text(
                    "login",
                    style: TextStyle(
                      color: TColors.primaryColors,
                      fontFamily: "Poppins",
                      fontSize: 19,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
