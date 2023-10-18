import 'package:covid_19_tacker/model%20class/country_state_model_class.dart';
import 'package:covid_19_tacker/widget/custom_http_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shimmer/shimmer.dart';

class SearchPageScreen extends StatefulWidget {
  const SearchPageScreen({Key? key}) : super(key: key);

  @override
  State<SearchPageScreen> createState() => _SearchPageScreenState();
}

class _SearchPageScreenState extends State<SearchPageScreen> with SingleTickerProviderStateMixin{

  TextEditingController searchController = TextEditingController();

  late AnimationController animationController = AnimationController(
      vsync: this,
  duration: Duration(seconds: 3)
  )..repeat();

  CustomHttpClass customHttpClass = CustomHttpClass();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: Colors.pink,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),

            IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios)
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),

            TextFormField(
              controller: searchController,

              onChanged: (value){
                setState(() {

                });
              },

              onEditingComplete: (){
                setState(() {

                });
              },
              decoration: InputDecoration(

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.grey,
                  ),
                ),

                hintText: "Search with Country name",
              ),

            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),

            Expanded(
                child: FutureBuilder<List<dynamic>>(
                  future: customHttpClass.fetchCountriesData(),
                    builder: (BuildContext context, snapshot) {
                      if (!snapshot.hasData) {
                        return Shimmer.fromColors(
                            child: ListView.builder(
                                shrinkWrap: true,
                                reverse: false,
                                scrollDirection: Axis.vertical,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    leading: Container(
                                          height: 50,
                                      width: 50,
                                      color: Colors.white,
                                    ),

                                    title: Container(
                                      height: 10,
                                      width: 89,
                                      color: Colors.white,),
                                    subtitle: Container(
                                      height: 10,
                                      width: 89,
                                      color: Colors.white,),
                                  );
                                }
                            ),
                            baseColor: Colors.grey.shade700,
                            highlightColor: Colors.grey.shade100,
                        );
                      } else {
                        return ListView.builder(
                            shrinkWrap: true,
                            reverse: false,
                            scrollDirection: Axis.vertical,
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              var name = Text(snapshot.data![index]["country"]);

                              if(searchController.text.isEmpty){
                                return ListTile(
                                  leading: Image(
                                      height: 50,
                                      width: 50,
                                      image: NetworkImage(snapshot
                                          .data![index]["countryInfo"]["flag"])),

                                  title: Text(snapshot.data![index]["country"]),
                                  subtitle: Text(snapshot.data![index]["cases"].toString()),
                                );
                              }else if(name.toString().toLowerCase().contains(searchController.text.toLowerCase())){
                                return ListTile(
                                  leading: Image(
                                      height: 50,
                                      width: 50,
                                      image: NetworkImage(snapshot
                                          .data![index]["countryInfo"]["flag"])),

                                  title: Text(snapshot.data![index]["country"]),
                                  subtitle: Text(snapshot.data![index]["cases"].toString()),
                                );
                              } else{
                                return Container();
                              }
                              return ListTile(
                                leading: Image(
                                    height: 50,
                                    width: 50,
                                    image: NetworkImage(snapshot
                                    .data![index]["countryInfo"]["flag"])),

                                title: Text(snapshot.data![index]["country"]),
                                subtitle: Text(snapshot.data![index]["cases"].toString()),
                              );
                            }
                        );
                      }
                    }
                    )
            )
          ],
        ),
      ),
    );
  }
}
