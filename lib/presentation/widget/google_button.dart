
import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.40,
      padding: const EdgeInsets.symmetric(
        horizontal: 3,
        vertical: 3,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade600),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Continue with"),
          const SizedBox(
            width: 5,
          ),
          Image.asset(
            "asset/image/google.jpg",
            fit: BoxFit.contain,
            width: 30,
            height: 30,
          ),
        ],
      ),
    );
  }
}
