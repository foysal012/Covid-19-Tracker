import 'dart:async';

import 'package:covid_19_tacker/screen/authentication/welcome_page_screen.dart';
import 'package:covid_19_tacker/screen/introduction%20screen/intoduction_page_screen.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class SpalashScreen extends StatefulWidget {
  const SpalashScreen({Key? key}) : super(key: key);

  @override
  State<SpalashScreen> createState() => _SpalashScreenState();
}

class _SpalashScreenState extends State<SpalashScreen> with SingleTickerProviderStateMixin{

  late AnimationController _animationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this)..repeat();

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => WelcomePageScreen() ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedBuilder(
                    animation: _animationController,
                    child: Container(
                      alignment: Alignment.center,
                      height: 250,
                      width: 250,
                      child: Center(
                        child: Image(image: AssetImage("images/w1.png")),
                      ),
                    ),
                    builder: (BuildContext context, Widget? child){
                      return Transform.rotate(
                          angle: _animationController.value * 2.0 * math.pi,
                          child: child,
                      );
                    }
                ),
                
                SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
                
                Align(
                  alignment: Alignment.center,
                  child: Text("Covid-19\nTracker App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xff3B3A79)
                  ),
                  ),
                )
              ],
            )
        ),
    );
  }
}
