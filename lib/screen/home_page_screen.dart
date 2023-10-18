import 'package:covid_19_tacker/model%20class/world_state_model_class.dart';
import 'package:covid_19_tacker/screen/search_page_screen.dart';
import 'package:covid_19_tacker/widget/custom_http_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pie_chart/pie_chart.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController =
      AnimationController(duration: Duration(seconds: 3), vsync: this)
        ..repeat();

  CustomHttpClass customHttpClass = CustomHttpClass();

  final colorList = [
    Color(0xff73719F),
    Color(0xff1aa260),
    Color(0xffde5246),
  ];

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //var data = CustomHttpClass().fetchWorldData();

    return Scaffold(
        body: Container(
            color: Colors.grey[500],
            padding: EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20,
            ),
            child: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),

              // FutureBuilder<WorldStateModelClass>(
              //   future: CustomHttpClass().fetchWorldData(),
              //     builder: (BuildContext context, AsyncSnapshot<WorldStateModelClass> snapshot){
              //
              //       if(snapshot.connectionState == ConnectionState.waiting){
              //         return SpinKitFadingCircle(
              //           color: Colors.white,
              //           size: 50,
              //           controller: animationController,
              //         );
              //       }
              //       else if(snapshot.hasError){
              //         return Center(child: Text("Something is error"));
              //       } else if(snapshot!.data == null){
              //         return Center(child: Text("No Data Found"));
              //       }
              //      else {
              //         // return Column(
              //         //   children: [
              //         //     PieChart(
              //         //       colorList: colorList,
              //         //       chartType: ChartType.ring,
              //         //       chartValuesOptions: ChartValuesOptions(
              //         //           showChartValuesInPercentage: true,
              //         //           chartValueStyle: TextStyle(
              //         //               fontSize: 20,
              //         //               fontWeight: FontWeight.bold,
              //         //               color: Color(0xff222049)
              //         //           )
              //         //       ),
              //         //       animationDuration: Duration(milliseconds: 1200),
              //         //       legendOptions: LegendOptions(
              //         //           legendPosition: LegendPosition.left
              //         //       ),
              //         //       dataMap: {
              //         //         "Total" : double.parse(snapshot.data!.cases.toString()),
              //         //         "Recovered" : double.parse(snapshot.data!.recovered.toString()),
              //         //         "Death" : double.parse(snapshot.data!.deaths.toString()),
              //         //       },
              //         //     ),
              //         //
              //         //     SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              //         //
              //         //     Padding(
              //         //       padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.03),
              //         //       child: Card(
              //         //         color: Color(0xff17719F),
              //         //         child: SizedBox(
              //         //           height: 300,
              //         //           width: double.infinity,
              //         //           child: Column(
              //         //             children: [
              //         //
              //         //               ReUseAbleCard(
              //         //                 title: "Total",
              //         //                 value: snapshot.data!.cases!.toInt(),
              //         //               ),
              //         //
              //         //               ReUseAbleCard(
              //         //                 title: "Deaths",
              //         //                 value: snapshot.data!.deaths!.toInt(),
              //         //               ),
              //         //
              //         //               ReUseAbleCard(
              //         //                 title: "Recovered",
              //         //                 value: snapshot.data!.recovered!.toInt(),
              //         //               ),
              //         //
              //         //               ReUseAbleCard(
              //         //                 title: "Active",
              //         //                 value: snapshot.data!.active!.toInt(),
              //         //               ),
              //         //
              //         //               ReUseAbleCard(
              //         //                 title: "Total",
              //         //                 value: snapshot.data!.critical!.toInt(),
              //         //               ),
              //         //
              //         //               ReUseAbleCard(
              //         //                 title: "Today Deaths",
              //         //                 value: snapshot.data!.todayDeaths!.toInt(),
              //         //               ),
              //         //
              //         //               ReUseAbleCard(
              //         //                 title: "Today Recovered",
              //         //                 value: snapshot.data!.todayRecovered!.toInt(),
              //         //               ),
              //         //             ],
              //         //           ),
              //         //         ),
              //         //       ),
              //         //     ),
              //         //
              //         //     SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              //         //
              //         //     InkWell(
              //         //       onTap: (){
              //         //        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchPageScreen()));
              //         //       },
              //         //       child: Container(
              //         //         height: 50,
              //         //         decoration: BoxDecoration(
              //         //           color: Color(0xff1aa260),
              //         //           borderRadius: BorderRadius.circular(10),
              //         //         ),
              //         //         child: Center(
              //         //           child: Text("Track Countries",
              //         //           style: TextStyle(
              //         //             fontWeight: FontWeight.bold,
              //         //             color: Colors.white,
              //         //             fontSize: 20,
              //         //           ),
              //         //           ),
              //         //         ),
              //         //       ),
              //         //     )
              //         //   ],
              //         // );
              //
              //        return Text(snapshot.data!.cases.toString());
              //
              //       }
              //     }),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              FutureBuilder<WorldStateModelClass>(
                  future: customHttpClass.fetchWorldData(),
                  builder:
                      (context, AsyncSnapshot<WorldStateModelClass> snapshot) {
                    if (!snapshot.hasData) {
                      return Expanded(
                        flex: 1,
                        child: SpinKitFadingCircle(
                          color: Colors.white,
                          size: 50.0,
                          controller: animationController,
                        ),
                      );
                    } else {
                      return Column(
                        children: [
                          PieChart(
                            dataMap: {
                              "Total": double.parse(
                                  snapshot.data!.cases!.toString()),
                              "Recovered": double.parse(
                                  snapshot.data!.recovered.toString()),
                              "Deaths": double.parse(
                                  snapshot.data!.deaths.toString()),
                            },
                            animationDuration: Duration(milliseconds: 2000),
                            chartLegendSpacing: 32,
                            chartRadius:
                                MediaQuery.of(context).size.width / 3.2,
                            colorList: colorList,
                            initialAngleInDegree: 0,
                            chartType: ChartType.ring,
                            ringStrokeWidth: 25,
                            legendOptions: const LegendOptions(
                              showLegendsInRow: false,
                              legendPosition: LegendPosition.left,
                              showLegends: true,
                              legendTextStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            chartValuesOptions: const ChartValuesOptions(
                              showChartValueBackground: true,
                              showChartValues: true,
                              showChartValuesInPercentage: true,
                              showChartValuesOutside: true,
                              decimalPlaces: 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height * .06),
                            child: Card(
                              color: Colors.blue,
                              child: Column(
                                children: [
                                  ReUseAbleCard(title: 'Total Cases', value: snapshot.data!.cases.toString()),
                                  ReUseAbleCard(title: 'Deaths', value: snapshot.data!.deaths.toString()),
                                  ReUseAbleCard(title: 'Recovered', value: snapshot.data!.recovered.toString()),
                                  ReUseAbleCard(title: 'Active', value: snapshot.data!.active.toString()),
                                  ReUseAbleCard(title: 'Critical', value: snapshot.data!.critical.toString()),
                                  ReUseAbleCard(title: 'Today Deaths', value: snapshot.data!.todayDeaths.toString()),
                                  ReUseAbleCard(title: 'Today Recovered', value: snapshot.data!.todayRecovered.toString()),
                                ],
                              ),
                            ),
                          ),

                          // FutureBuilder(
                          //     future: CustomHttpClass().fetchWorldData(),
                          //     builder: )
                        ],
                      );
                    }
                  }),

                          InkWell(
                            onTap: (){
                             Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchPageScreen()));
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xff1aa260),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("Track Countries",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                ),
                              ),
                            ),
                          )
            ])));
  }
}

class ReUseAbleCard extends StatelessWidget {
  ReUseAbleCard({super.key, this.title, this.value});

  String? title;
  String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
        //bottom: 10
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$title",
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w700,
              fontSize: 22,
            ),
          ),
          Text(
            "$value",
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w700,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
