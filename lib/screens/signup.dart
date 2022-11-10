import 'package:flutter/material.dart';
import 'package:student_forum/components/custom_button.dart';
import 'package:student_forum/screens/home.dart';

import '../utilities/constant.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static const signUp = 'sign up';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Create an account',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: kFields.copyWith(
                      label: const Text('First Name'),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: kFields.copyWith(
                      label: const Text('Last Name'),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: kFields.copyWith(
                      label: const Text('Email'),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: kFields.copyWith(
                      label: const Text('Username'),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: kFields.copyWith(
                      label: const Text('Password'),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: isChecked,
                          checkColor: Colors.white,
                          activeColor: kMainBodyColor,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value;
                            });
                          }),
                      const Text('I agree with the terms')
                    ],
                  ),
                  CustomButton(
                    text: 'Create account',
                    onPressed: () {
                      Navigator.pushNamed(context, Home.home);
                    },
                    widthValue: 0.60,
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
