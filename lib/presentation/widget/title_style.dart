import 'package:flutter/material.dart';

import '../../core/utils/constant/colors.dart';

TextStyle textStyle = TextStyle(
    color: TColors.primaryColors,
    fontSize: 30,
    fontWeight: FontWeight.w700,
    fontFamily: "Poppins");

TextStyle subTitle() {
  return TextStyle(
    color: TColors.buttonColors,
    fontSize: 25,
    fontWeight: FontWeight.w600,
  );
}

TextStyle descriptionStyle() {
  return TextStyle(
    color: Colors.grey.shade600,
    fontSize: 13,
    fontWeight: FontWeight.w300,
  );
}
