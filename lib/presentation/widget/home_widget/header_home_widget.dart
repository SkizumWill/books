import 'package:flutter/material.dart';

import '../../../core/utils/constant/colors.dart';

class HeaderHomeWidget extends StatelessWidget {
  const HeaderHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "My Books",
          style: TextStyle(
              color: TColors.primaryColors,
              fontSize: 20,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w600),
        ),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: TColors.primaryColors.withOpacity(0.9),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 35,
                top: 15,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Center(
                    child: Text(
                      "0",
                      style: TextStyle(
                        color: TColors.primaryColors,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Icon(
                  Icons.notifications,
                  size: 30,
                  color: TColors.buttonColors,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
