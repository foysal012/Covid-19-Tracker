import 'package:covid_19_tacker/screen/bottom%20navigation%20ber/bottom_navigation_ber.dart';
import 'package:flutter/material.dart';

class IntroductionPageScreen1 extends StatefulWidget {
  const IntroductionPageScreen1({Key? key}) : super(key: key);

  @override
  State<IntroductionPageScreen1> createState() => _IntroductionPageScreen1State();
}

class _IntroductionPageScreen1State extends State<IntroductionPageScreen1> {
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

            Text("Track Covid Cases\nAll Across The World",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xff3B3A79),
            ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.08,),

            Image(image: AssetImage("images/w4.png"),fit: BoxFit.cover,),

            SizedBox(height: MediaQuery.of(context).size.height * 0.14,),

            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNavigationBerPageScreen()));
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
