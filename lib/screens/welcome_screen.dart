import 'package:flutter/material.dart';
import 'package:student_forum/components/custom_button.dart';
import 'package:student_forum/components/logo.dart';
import 'package:student_forum/screens/login_screen.dart';
import 'package:student_forum/utilities/constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const welcomeScreen = 'welcome';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Expanded(
                child: SizedBox(
                  height: 20,
                ),
              ),
              Logo(
                customWidth: 0.40,
              ),
              Text(
                'foruME+',
                style: Theme.of(context).textTheme.headline1,
              ),
              const Expanded(
                child: SizedBox(
                  height: 20,
                ),
              ),
              CustomButton(
                text: 'Start',
                onPressed: (() {
                  Navigator.pushNamed(context, Login.login);
                }),
                widthValue: 0.30,
              ),
              SizedBox(
                height: height * 0.04,
              )
            ],
          ),
        ),
      ),
    );
  }
}
