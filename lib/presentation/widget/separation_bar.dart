import 'package:flutter/material.dart';

class SeparationBar extends StatelessWidget {
  const SeparationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            child: Divider(),
          ),
          SizedBox(
            width: 10,
          ),
          Text("OR"),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Divider(),
          ),
        ]);
  }
}
