import 'package:covid_19_tacker/screen/booking_page_screen.dart';
import 'package:covid_19_tacker/screen/home_page_screen.dart';
import 'package:covid_19_tacker/screen/profile_page_screen.dart';
import 'package:covid_19_tacker/screen/search_page_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationBerPageScreen extends StatefulWidget {
  const BottomNavigationBerPageScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBerPageScreen> createState() => _BottomNavigationBerPageScreenState();
}

class _BottomNavigationBerPageScreenState extends State<BottomNavigationBerPageScreen> {

  List<Widget> pages = [
    HomePageScreen(),
    SearchPageScreen(),
    BookingPageScreen(),
    //ProfilePageScreen(),
  ];

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: currentIndex,
        onTap: (val){
          setState(() {
            currentIndex = val;
          });
        },

        selectedLabelStyle: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 20
        ),
        selectedItemColor: Colors.black,
        unselectedFontSize: 10,
        showUnselectedLabels: false,

        items: [

          BottomNavigationBarItem(
            label: "Home",
              icon: Icon(Icons.home),
            backgroundColor: Color(0xff3B3A79),
          ),

          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
            backgroundColor: Color(0xff3B3A79),
          ),

          BottomNavigationBarItem(
            label: "Booking",
            icon: Icon(Icons.bookmark_added_outlined),
            backgroundColor: Color(0xff3B3A79),
          ),

          // BottomNavigationBarItem(
          //   label: "Profile",
          //   icon: Icon(Icons.person),
          //   backgroundColor: Color(0xff3B3A79),
          // ),

        ],
      ),
    );
  }
}
