import 'package:flutter/material.dart';
import 'package:student_forum/screens/home.dart';
import 'package:student_forum/screens/onboarding.dart';
import 'package:student_forum/utilities/constant.dart';

import '../components/custom_button.dart';
import '../components/logo.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  static const login = 'login';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Logo(
                    customWidth: 0.30,
                  ),
                  Text(
                    'foruME+',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: kFields,
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: kFields.copyWith(
                      label: const Text('Password'),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  CustomButton(
                    text: 'Sign in',
                    onPressed: () {
                      Navigator.pushNamed(context, Home.home);
                    },
                    widthValue: 0.40,
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Do not have an account?',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Onboarding.onboarding);
                        },
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            color: kMainBodyColor,
                            fontSize: 19,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
