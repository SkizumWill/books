import 'package:flutter/material.dart';

import '../../core/utils/constant/colors.dart';

class FormConfirmationCode extends StatelessWidget {
  const FormConfirmationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextField(
            maxLength: 1,
            enableSuggestions: false,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: TColors.primaryColors,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: TColors.buttonColors,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: "0"),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: TextFormField(
              maxLength: 1,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: TColors.primaryColors,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: TColors.buttonColors,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "0")),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: TextFormField(
              maxLength: 1,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: TColors.primaryColors,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: TColors.buttonColors,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "0")),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: TextFormField(
            maxLength: 1,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: TColors.primaryColors,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: TColors.buttonColors,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: "0"),
          ),
        ),
      ],
    );
  }
}
