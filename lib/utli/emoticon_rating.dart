import 'package:flutter/material.dart';

class EmotIconRating extends StatelessWidget {
  final Icon emoticon;
  final String title;
  const EmotIconRating({
    super.key,
    required this.emoticon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[400],
            borderRadius: BorderRadius.circular(12),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 20,
            onPressed: () {},
            icon: emoticon,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
