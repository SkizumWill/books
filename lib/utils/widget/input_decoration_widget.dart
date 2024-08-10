import 'package:books/utils/constant/colors.dart';
import 'package:flutter/material.dart';

InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: Colors.grey),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: Colors.grey),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: TColors.error),
  ),
  errorMaxLines: 3,
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.grey),
    borderRadius: BorderRadius.circular(12),
  ),
);
