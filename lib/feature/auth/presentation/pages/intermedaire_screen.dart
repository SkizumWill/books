import 'package:books/utils/constant/colors.dart';
import 'package:flutter/material.dart';

import '../widget/custom_clipper_widget.dart';

class IntermedaireScreen extends StatelessWidget {
  const IntermedaireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: CustomClipperWidget()
        ,child: Container(
          color: TColors.primaryColors,
          height: 300,
          child: const Text("clip Path"),
          
        ),
      ),
    );
  }
}