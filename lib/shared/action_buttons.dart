import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onPressed;
  const ActionButtons({
    Key? key,
    required this.icon,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(icon),
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
