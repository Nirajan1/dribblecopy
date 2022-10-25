import 'package:flutter/material.dart';

class EmotIconRating extends StatelessWidget {
  final Icon emoticon;
  const EmotIconRating({
    super.key,
    required this.emoticon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
