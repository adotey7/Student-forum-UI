import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:student_forum/screens/signup.dart';
import 'package:student_forum/utilities/constant.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  static const onboarding = 'signup';

  @override
  Widget build(BuildContext context) {
    List<Widget> imagesWithCaption = [
      Column(children: [
        Image.asset('assets/1.png'),
        const Text(
          'Hello! there....',
          style: TextStyle(
            color: kMainBodyColor,
            fontSize: 25,
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.bold,
          ),
        ),
      ]),
      Image.asset('assets/2.png'),
      Image.asset('assets/3.png'),
    ];

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ImageSlideshow(
            indicatorRadius: 4,
            indicatorColor: kMainBodyColor,
            indicatorBackgroundColor: Colors.green,
            height: height * 0.60,
            children: imagesWithCaption,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kMainBodyColor,
        child: const Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Navigator.pushNamed(context, SignUp.signUp);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
