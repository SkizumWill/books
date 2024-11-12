import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/constant/colors.dart';


class HomeBottomPage extends StatelessWidget {
  const HomeBottomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "first state management",
          style: TextStyle(color: TColors.primaryColors, fontSize: 18),
        ),
        elevation: 0,
        backgroundColor: TColors.whiteBackground,
      ),
      body: BlocConsumer(
        listener: (context, state) {},
        builder: (context, state) {
          return const Center(
            child: TextController(text: "fgdfg"),
          );
        },
      ),
    );
  }
}

class TextController extends StatelessWidget {
  const TextController({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(text),
        ElevatedButton(
          onPressed: (){},
          child: const Text('Change Text'),
        )
      ],
    );
  }
}
