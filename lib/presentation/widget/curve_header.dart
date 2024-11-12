
import 'package:books/presentation/widget/custom_clipper_widget.dart';
import 'package:flutter/material.dart';

import '../../core/utils/constant/colors.dart';

class CurveHeader extends StatelessWidget {
  const CurveHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: CustomClipperWidget(),
        child: Container(
          decoration: BoxDecoration(
            color: TColors.textSecondColors,
            image: const DecorationImage(
              image: AssetImage("asset/image/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          height: size.height * 0.25,
          width: double.infinity,
        ));
  }
}
