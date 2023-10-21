import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({Key? key}) : super(key: key);

  @override
  State<ProfilePageScreen> createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
              //Center(child: Text("Foysal Joarder"))

            Container(
              height: 320,
              child: Stack(
                children: [
                  Transform.rotate(
                    angle: pi/5,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(150),
                          bottomLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                          //bottomRight: Radius.circular(150),
                        ),
                        color: Colors.indigo,
                      ),
                    ),
                  ),

                  Positioned(
                     bottom: 0,
                      right: 90,
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          //color: Colors.pink
                          image: DecorationImage(image: AssetImage("images/w8.jpg"), fit: BoxFit.cover)
                        ),
                      )
                  ),

                  Positioned(
                      bottom: 150,
                      right: 60,
                      child: Text("Foysal Joarder",
                        style: GoogleFonts.lobster(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30,
                        )
                      )
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),

            Container(
              padding: EdgeInsets.only(
                left: 30,
                right: 30
              ),
              child: Column(
                children: [

                  ReUseAbleWidget(
                    icon: Icons.person,
                    title: "Foysal Joarder",
                  ),

                  SizedBox(height: 5,),

                  Container(
                    height: 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey
                  ),
                  ),

                  SizedBox(height: 20,),

                  ReUseAbleWidget(
                    icon: Icons.date_range,
                    title: "1999-11-05",
                  ),

                  SizedBox(height: 5,),

                  Container(
                    height: 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey
                    ),
                  ),

                  SizedBox(height: 20,),

                  ReUseAbleWidget(
                    icon: Icons.call,
                    title: "+8801746509631",
                  ),

                  SizedBox(height: 5,),

                  Container(
                    height: 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey
                    ),
                  ),

                  SizedBox(height: 20,),

                  ReUseAbleWidget(
                    icon: Icons.code_sharp,
                    title: "GitHub Account",
                  ),

                  SizedBox(height: 5,),

                  Container(
                    height: 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey
                    ),
                  ),

                  SizedBox(height: 20,),

                  ReUseAbleWidget(
                    icon: Icons.alternate_email,
                    title: "foysal852@gmail.com",
                  ),

                  SizedBox(height: 5,),

                  Container(
                    height: 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey
                    ),
                  ),

                  SizedBox(height: 20,),

                  ReUseAbleWidget(
                    icon: Icons.key,
                    title: "*************",
                  ),

                  SizedBox(height: 5,),

                  Container(
                    height: 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey
                    ),
                  ),

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

class ReUseAbleWidget extends StatelessWidget {
   ReUseAbleWidget({
    super.key,
    this.title, this.icon
  });
  IconData? icon;
  String? title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.indigo, size: 30,),

        SizedBox(width: 50,),

        Text("$title",
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
