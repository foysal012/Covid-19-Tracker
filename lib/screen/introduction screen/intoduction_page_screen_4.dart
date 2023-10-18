import 'package:flutter/material.dart';

class IntroductionPageScreen4 extends StatefulWidget {
  const IntroductionPageScreen4({Key? key}) : super(key: key);

  @override
  State<IntroductionPageScreen4> createState() => _IntroductionPageScreen4State();
}

class _IntroductionPageScreen4State extends State<IntroductionPageScreen4> {
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

            Text("Get Vaccine Appointments",
              //textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff3B3A79),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.08,),

            Image(image: AssetImage("images/w7.png"),fit: BoxFit.cover,),

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
