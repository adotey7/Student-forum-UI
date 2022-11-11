import 'package:flutter/material.dart';

import '../utilities/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.widthValue = 0.10,
  }) : super(key: key);
  final String text;
  final VoidCallback onPressed;
  final double widthValue;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: kMainBodyColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        fixedSize: Size(width * widthValue, height * 0.07),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
