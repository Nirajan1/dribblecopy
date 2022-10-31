import 'package:flutter/material.dart';

class ExcercisesListView extends StatelessWidget {
  final String title;
  final String subtTitle;
  final Icon displayIcon;
  final Color displayColor;
  final Color iconColor;
  const ExcercisesListView({
    Key? key,
    required this.title,
    required this.displayIcon,
    required this.subtTitle,
    required this.displayColor,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 9,
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: displayColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  color: iconColor,
                  iconSize: 35,
                  onPressed: () {},
                  icon: displayIcon,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    subtTitle,
                    style: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
        ],
      ),
    );
  }
}
