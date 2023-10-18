import 'package:covid_19_tacker/widget/custom_http_class.dart';
import 'package:flutter/material.dart';

class SearchPageScreen extends StatefulWidget {
  const SearchPageScreen({Key? key}) : super(key: key);

  @override
  State<SearchPageScreen> createState() => _SearchPageScreenState();
}

class _SearchPageScreenState extends State<SearchPageScreen> {

  TextEditingController searchController = TextEditingController();


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

            // Expanded(
            //     child: FutureBuilder(
            //       future: CustomHttpClass().fetchCountriesData(),
            //         builder: (BuildContext context, snapshot){
            //       return ListView.builder(
            //           shrinkWrap: true,
            //           reverse: false,
            //           scrollDirection: Axis.vertical,
            //           itemCount: snapshot.data!.length,
            //           itemBuilder: (context,index){
            //             return ListTile(
            //
            //               leading: Image(image: NetworkImage(snapshot.data![index]["countryInfo"]["flag"])),
            //             );
            //           }
            //       );
            //     })
            // )
          ],
        ),
      ),
    );
  }
}
