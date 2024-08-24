import 'package:flutter/material.dart';

import '../../../../utils/constant/colors.dart';

ButtonStyle elevetadeButtonSytle(BuildContext context) {
    return ElevatedButton.styleFrom(
                          backgroundColor: TColors.primaryColors,
                          padding: const EdgeInsets.all(10),
                          minimumSize: Size(
                              MediaQuery.of(context).size.width * 0.95, 45),
                          maximumSize: Size(
                              MediaQuery.of(context).size.width * 0.95, 45),
                          fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.95, 45),
                          elevation: 4,
                          shadowColor:
                              TColors.textSecondColors.withOpacity(0.5),
                        );
  }