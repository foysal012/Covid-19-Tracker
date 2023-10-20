import 'package:covid_19_tacker/model%20class/booking_details_model_class.dart';
import 'package:covid_19_tacker/screen/boooking/booking_page_screen1.dart';
import 'package:flutter/material.dart';

class BookingPageScreen extends StatefulWidget {
  const BookingPageScreen({Key? key}) : super(key: key);

  @override
  State<BookingPageScreen> createState() => _BookingPageScreenState();
}

class _BookingPageScreenState extends State<BookingPageScreen> {

  TextEditingController searchController = TextEditingController();

  var dataList = BookingDeatilsModelClass.generatedBookingList;

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
        child: Column(
          children: [

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),

            Expanded(
                flex: 2,
                child: Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
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

                        TextFormField(
                          controller: searchController,

                          onChanged: (value){
                            setState(() {
                              
                            });
                          },

                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                width: 3,
                                color: Colors.grey,
                              ),
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                width: 3,
                                color: Colors.grey,
                              ),
                            ),

                            prefixIcon: Icon(Icons.search),

                            suffixIcon: Icon(Icons.keyboard_voice),

                            hintText: "Search Hospital",

                          ),
                        )
                      ],
                    ),
                  ),
                )),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),

            Expanded(
                flex: 8,
                child: Container(
                  child: ListView.separated(
                    shrinkWrap: true,
                      reverse: false,
                      itemBuilder: (context, index){
                        var name = dataList[index].hName;
                          if(searchController.text == null){
                            return Stack(
                              children: [

                                Container(
                                  height: 200,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(
                                    left: 20,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        width: 3,
                                        color: Colors.grey,
                                      ),
                                      gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            //Colors.white,
                                            //Colors.white70,
                                            Colors.white54,
                                            Colors.indigo.withOpacity(0.3),
                                            Colors.indigo.withOpacity(0.6),
                                            Colors.indigo.withOpacity(0.9),
                                            Colors.indigo,
                                          ]
                                      )
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 6,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("${dataList[index].hName}"),
                                            SizedBox(
                                              height: MediaQuery.of(context).size.height * 0.001,
                                            ),
                                            Text("${dataList[index].hAddress}"),
                                            SizedBox(
                                              height: MediaQuery.of(context).size.height * 0.001,
                                            ),
                                            Text("${dataList[index].hHotline}"),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("${dataList[index].hBedNumber} Beds"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Positioned(
                                    bottom: 3,
                                    right: 3,
                                    child: InkWell(
                                      onTap:(){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BookingPageScreen_1(
                                          bookingList: dataList[index],
                                        )));
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(20),
                                          ),
                                          color: Colors.deepPurple,
                                        ),
                                        child: Center(child: Text("Book",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )),
                                      ),
                                    )
                                )

                              ],
                            );
                          } else if(name.toString().toLowerCase().contains(searchController.text.toLowerCase())){
                          return Stack(
                            children: [

                              Container(
                                height: 200,
                                width: double.infinity,
                                padding: EdgeInsets.only(
                                  left: 20,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      width: 3,
                                      color: Colors.grey,
                                    ),
                                    gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          //Colors.white,
                                          //Colors.white70,
                                          Colors.white54,
                                          Colors.indigo.withOpacity(0.3),
                                          Colors.indigo.withOpacity(0.6),
                                          Colors.indigo.withOpacity(0.9),
                                          Colors.indigo,
                                        ]
                                    )
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("${dataList[index].hName}"),
                                          SizedBox(
                                            height: MediaQuery.of(context).size.height * 0.001,
                                          ),
                                          Text("${dataList[index].hAddress}"),
                                          SizedBox(
                                            height: MediaQuery.of(context).size.height * 0.001,
                                          ),
                                          Text("${dataList[index].hHotline}"),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("${dataList[index].hBedNumber} Beds"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Positioned(
                                  bottom: 3,
                                  right: 3,
                                  child: InkWell(
                                    onTap:(){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BookingPageScreen_1(
                                        bookingList: dataList[index],
                                      )));
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(20),
                                        ),
                                        color: Colors.deepPurple,
                                      ),
                                      child: Center(child: Text("Book",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),
                                      )),
                                    ),
                                  )
                              )

                            ],
                          );
                        } else{
                            return Container();
                        }
                      },
                      separatorBuilder: (_,index){
                      return  SizedBox(height: MediaQuery.of(context).size.height * 0.02,
                      );

                      },
                      itemCount: dataList.length,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
