import 'package:flutter/material.dart';
import 'package:student_forum/screens/home.dart';
import 'package:student_forum/screens/login_screen.dart';
import 'package:student_forum/screens/onboarding.dart';
import 'package:student_forum/screens/signup.dart';
import 'package:student_forum/screens/welcome_screen.dart';
import 'package:student_forum/utilities/constant.dart';

void main() {
  runApp(const StudentForum());
}

class StudentForum extends StatelessWidget {
  const StudentForum({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kSecondaryColor,
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: kMainBodyColor,
          ),
          headline2: TextStyle(
            fontSize: 23,
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            fontSize: 19,
          ),
          bodyText2: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w800,
            color: kMainBodyColor,
          ),
        ),
      ),
      title: 'Flutter Demo',
      initialRoute: WelcomeScreen.welcomeScreen,
      routes: {
        WelcomeScreen.welcomeScreen: (context) => const WelcomeScreen(),
        Login.login: (context) => const Login(),
        Onboarding.onboarding: (context) => const Onboarding(),
        SignUp.signUp: (context) => const SignUp(),
        Home.home: (context) => const Home(),
      },
    );
  }
}
