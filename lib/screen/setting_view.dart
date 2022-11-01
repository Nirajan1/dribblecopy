import 'package:flutter/material.dart';

class ScreenView extends StatelessWidget {
  const ScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: const [
              Text('hello form dash borad'),
            ],
          )
        ],
      ),
    );
  }
}
