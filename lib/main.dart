import 'package:covid_19_tacker/screen/authentication/Signup_page_screen.dart';
import 'package:covid_19_tacker/screen/authentication/forgetpassword_page_screen.dart';
import 'package:covid_19_tacker/screen/authentication/signin_page_screen.dart';
import 'package:covid_19_tacker/screen/authentication/welcome_page_screen.dart';
import 'package:covid_19_tacker/screen/bottom%20navigation%20ber/bottom_navigation_ber.dart';
import 'package:covid_19_tacker/screen/introduction%20screen/intoduction_page_screen_1.dart';
import 'package:covid_19_tacker/screen/profile_page_screen.dart';
import 'package:covid_19_tacker/screen/splash%20screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screen/introduction screen/intoduction_page_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent)
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: SpalashScreen(),
      //home: WelcomePageScreen(),
      //home: SignupPageScreen(),
      //home: IntroductionPageScreen1(),
      //home: IntroductionPageScreen(),
      //home: BottomNavigationBerPageScreen(),
      //home: ForgetPasswordPageScreen(),
      //home: ProfilePageScreen(),
    );
  }
}
