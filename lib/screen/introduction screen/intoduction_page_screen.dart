import 'package:covid_19_tacker/screen/authentication/signin_page_screen.dart';
import 'package:covid_19_tacker/screen/bottom%20navigation%20ber/bottom_navigation_ber.dart';
import 'package:covid_19_tacker/screen/introduction%20screen/intoduction_page_screen_1.dart';
import 'package:covid_19_tacker/screen/introduction%20screen/intoduction_page_screen_2.dart';
import 'package:covid_19_tacker/screen/introduction%20screen/intoduction_page_screen_3.dart';
import 'package:covid_19_tacker/screen/introduction%20screen/intoduction_page_screen_4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionPageScreen extends StatefulWidget {
  const IntroductionPageScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionPageScreen> createState() => _IntroductionPageScreenState();
}

class _IntroductionPageScreenState extends State<IntroductionPageScreen> {

  PageController pageController = PageController();

  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index){
              setState(() {
                onLastPage = (index == 3);
              });
            },
            children: [
              IntroductionPageScreen1(),
              IntroductionPageScreen2(),
              IntroductionPageScreen3(),
              IntroductionPageScreen4(),
            ],
          ),

          Container(
            alignment: Alignment(0, 0.46),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                InkWell(
                  onTap: (){
                    pageController.jumpToPage(3);
                  },
                  child: Text("Skip",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3B3A79),
                    ),
                  ),
                ),

                SizedBox(width: 15,),

                SmoothPageIndicator(
                    controller: pageController,
                    count: 4
                ),

                SizedBox(width: 15,),

                onLastPage == true ? InkWell(
                  onTap: (){
                    pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );

                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BottomNavigationBerPageScreen()));

                    },
                  child: Text("Done",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3B3A79),
                    ),
                  ),
                )
                    :
                InkWell(
                  onTap: (){
                    pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Text("Next",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3B3A79),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      )
    );
  }
}
