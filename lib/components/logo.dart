import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    required this.customWidth,
  }) : super(key: key);

  final double customWidth;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Image.asset(
      'assets/logo_green.png',
      width: width * customWidth,
    );
  }
}
