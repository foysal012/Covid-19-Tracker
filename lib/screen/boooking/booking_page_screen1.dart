import 'dart:math';

import 'package:covid_19_tacker/model%20class/booking_details_model_class.dart';
import 'package:covid_19_tacker/screen/booking_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class BookingPageScreen_1 extends StatefulWidget {
   BookingPageScreen_1({Key? key, this.bookingList}) : super(key: key);

   BookingDeatilsModelClass? bookingList;

  @override
  State<BookingPageScreen_1> createState() => _BookingPageScreen_1State();
}

class _BookingPageScreen_1State extends State<BookingPageScreen_1> {

  TextEditingController pIdNumberController = TextEditingController();
  TextEditingController pFullNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();


  var dataList = BookingDeatilsModelClass.generatedBookingList;

  int currentIndex = 0;

  List<String> gName = ["Male", "Female", "Other"];

  List<String> timeSelect = ["9-10 AM", "10-11 AM", "11-12 PM", "12-1 PM", "1-2 PM", "2-3 PM"];

  XFile? image;
  ImagePicker _picker = ImagePicker();

  void uploadImage() async{

    image = await _picker.pickImage(source: ImageSource.camera);
    //
    // if(image != null){
    //
    // } else{
    //
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: Colors.yellow,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              Container(
                child: Column(
                  children: [

                    Row(
                      children: [

                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_back_ios),
                        ),

                        Text("08 October, Friday"),

                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.calendar_view_day)
                        ),


                      ],
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),

                    Text("Patient's Photo ID will be verified while\ngetting admitted to the hospital. Please\nprovide details of the Photo ID of the patient.",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("Photo Id Proof",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3B3979),
                  ),
                  ),

                  TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: image != null ? "image.png" : "Upload Photo ID",

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.grey,
                        )
                      ),

                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.grey,
                          )
                      ),

                      suffixIcon: IconButton(
                          onPressed: (){
                            uploadImage();
                          },
                          icon: Icon(Icons.keyboard_arrow_down_sharp)
                      )
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),

                  Text("Photo Id Number",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3B3979),
                    ),
                  ),

                  TextFormField(
                    controller: pIdNumberController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hintText: "Enter Adher Card/PIN Card Number",

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              width: 3,
                              color: Colors.grey,
                            )
                        ),

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              width: 3,
                              color: Colors.grey,
                            )
                        ),
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),

                  Text("Full Name",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3B3979),
                    ),
                  ),

                  TextFormField(
                    controller: pFullNameController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hintText: "Enter Full Name",

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              width: 3,
                              color: Colors.grey,
                            )
                        ),

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              width: 3,
                              color: Colors.grey,
                            )
                        ),
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),

                  Text("Date of Birth",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3B3979),
                    ),
                  ),

                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: dateController,
                    decoration: InputDecoration(
                        hintText: "Select Date of Birth",

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              width: 3,
                              color: Colors.grey,
                            )
                        ),

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              width: 3,
                              color: Colors.grey,
                            )
                        ),

                        suffixIcon: IconButton(
                            onPressed: () async{
                              DateTime? pickDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1950),
                                  lastDate: DateTime(2050),
                              );

                              if(pickDate != null){
                                print(pickDate);
                                String formattedDate = DateFormat("yyyy-MM-dd").format(pickDate);
                                print(formattedDate);

                                setState(() {
                                  dateController.text = formattedDate;
                                });
                              }
                            },
                            icon: Icon(Icons.keyboard_arrow_down_sharp)
                        )
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),

                  Text("Gender",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3B3979),
                    ),
                  ),

                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                      reverse: false,
                      itemCount: 3,
                      itemBuilder: (context, index){
                    return Padding(
                      padding:  EdgeInsets.only(bottom: 8.0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: currentIndex == index ? Color(0xff3B3979) : Color(0xff73719F),
                            border: currentIndex == index ? Border.all(
                              width: 3,
                              color: Colors.pink,
                            ) :
                                Border.all()
                          ),
                          child: Center(child: Text(gName[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          )),
                        ),
                      ),
                    );
                      }
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),

                  InkWell(
                    onTap: (){
                      showDialog(context: context, builder: (BuildContext context){
                        return AlertDialog(
                          title: Text("Booking Successful!"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.001,
                              ),


                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.deepPurple,
                                ),
                                child: Icon(Icons.check,color: Colors.white,),
                              ),

                        SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Date"),

                        Text(dateController.text),
                        ],
                        ),

                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.01,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Booking Number"),

                                  Text("PR74930"),
                                ],
                              ),

                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.01,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Hospital"),

                                  Text("${widget.bookingList!.hName}"),

                                ],
                              ),

                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.03,
                              ),

                              Text("You'll get a booking confirmation via SMS\non you registered mobile number",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),

                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.03,
                              ),

                              InkWell(
                                onTap: (){
                                  Navigator.of(context).pop();
                                  //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BookingPageScreen()));
                                },
                                child: Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.deepPurple,
                                  ),
                                  child: Center(child: Text("Continue",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  )),
                                ),
                              )
                            ],
                          ),
                        );
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff1aa260),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Book",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
