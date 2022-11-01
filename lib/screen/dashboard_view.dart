import 'package:flutter/material.dart';

class DashView extends StatelessWidget {
  const DashView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: const[
               Text('hello form dash borad'),
            ],
          )
        ],
      ),
    );
  }
}
