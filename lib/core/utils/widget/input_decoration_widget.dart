import 'package:books/core/utils/constant/colors.dart';
import 'package:flutter/material.dart';

InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  labelStyle: TextStyle(
    color: Colors.grey.shade400,
    fontSize: 17,
  ),
  prefixIconColor: TColors.buttonColors,
  disabledBorder: OutlineInputBorder(
    gapPadding: 3,
    borderRadius: BorderRadius.circular(50),
    borderSide: BorderSide(color: TColors.primaryColors),
  ),
  enabledBorder: OutlineInputBorder(
    gapPadding: 3,
    borderRadius: BorderRadius.circular(50),
    borderSide: BorderSide(color: TColors.primaryColors),
  ),
  errorBorder: OutlineInputBorder(
    gapPadding: 3,
    borderRadius: BorderRadius.circular(50),
    borderSide: BorderSide(color: TColors.error),
  ),
  errorMaxLines: 3,
  focusedBorder: OutlineInputBorder(
    gapPadding: 3,
    borderSide: BorderSide(color: TColors.primaryColors),
    borderRadius: BorderRadius.circular(20),
  ),
);
