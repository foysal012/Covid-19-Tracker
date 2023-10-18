import 'package:flutter/material.dart';

class IntroductionPageScreen2 extends StatefulWidget {
  const IntroductionPageScreen2({Key? key}) : super(key: key);

  @override
  State<IntroductionPageScreen2> createState() => _IntroductionPageScreen2State();
}

class _IntroductionPageScreen2State extends State<IntroductionPageScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(
          left: 25,
          right: 25,
          top: 130,
          bottom: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text("Check Availability of\nBeds, Ventillators etc.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff3B3A79),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.08,),

            Image(image: AssetImage("images/w5.png"),fit: BoxFit.cover,),

            SizedBox(height: MediaQuery.of(context).size.height * 0.14,),

            InkWell(
              onTap: (){

              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff3B3A79)
                ),

                child: Center(
                  child: Text("Get Started",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
