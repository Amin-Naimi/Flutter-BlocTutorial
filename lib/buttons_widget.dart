import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          height: 10,
        ),
         FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.exposure_zero),
        ),
        const SizedBox(
          height: 10,
        ),
         FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.remove),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
