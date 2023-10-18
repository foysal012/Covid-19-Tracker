import 'package:covid_19_tacker/screen/authentication/Signup_page_screen.dart';
import 'package:covid_19_tacker/screen/authentication/signin_page_screen.dart';
import 'package:flutter/material.dart';

class WelcomePageScreen extends StatefulWidget {
  const WelcomePageScreen({Key? key}) : super(key: key);

  @override
  State<WelcomePageScreen> createState() => _WelcomePageScreenState();
}

class _WelcomePageScreenState extends State<WelcomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Text("Covid-19\nTracker App",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xff3B3A79),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.04,),

            Text("Welcome!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0xff3B3A79)
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

            Text("Signin to Existing account\nor create new account to get started",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color(0xff3B3A79)
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.04,),

            InkWell(
              onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SigninPageScreen()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff3B3A79)
                ),
                child: Center(
                  child: Text("Sign In",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18
                  ),
                  ),
                ),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage("images/w2.png",),),
                      border: Border.all(
                        width: 3,
                        color: Colors.grey.withOpacity(0.5),
                      )
                    ),
                  ),
                ),

                SizedBox(width: 10,),

                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage("images/w3.png")),
                        border: Border.all(
                          width: 3,
                          color: Colors.grey.withOpacity(0.5),
                        )
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("Don't have an account?",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold,
                ),
                ),

                SizedBox(width: 10,),

                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignupPageScreen()));
                  },
                  child: Text("Sign Up",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff3B3A79),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.1,),

          ],
        ),
      ),
    );
  }
}
