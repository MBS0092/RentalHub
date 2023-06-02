import 'package:flutter/material.dart';

import '../Constants/Color.dart';

class SearchResult extends StatefulWidget {
  static const String id = "searchres";
  const SearchResult({Key? key}) : super(key: key);

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text('Search Results', style: TextStyle(color: hintText),),
        ),

        backgroundColor: Colors.transparent,
        elevation: 0,

        leading: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: hintText),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '"Some Item"',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: hintText,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: textfieldbg,
                        borderRadius: BorderRadius.circular(16),

                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                      ),
                      child: DropdownButton<String>(
                        value: 'Best Match',
                        onChanged: (newValue) {},
                        items: <String>['Best Match', 'Lowest Price', 'Highest Price']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                                value,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: hintText,
                                  decoration: TextDecoration.none,
                                )
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 550,
                height: 630,
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(10.0),
                  childAspectRatio: 0.9,
                  children: List.generate(5, (index) {
                    return Container(
                      width: 350,
                      height: 50,
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: textfieldborder,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/img/orange-73.png',
                            height: 20.0,
                            width: double.infinity,

                            color: hintText,
                          ),

                          SizedBox(height: 16.0),
                          Row(
                            children: [
                              Text(
                                'Item Name',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: labelsText,
                                ),
                              ),
                              Spacer(),
                              Text(
                                '\$10/hr',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: kPrimaryColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.0),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 12.0,
                                color: seclabels,
                              ),
                              SizedBox(width: 4.0),
                              Text(
                                'Islamabad',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: seclabels,
                                ),
                              ),
                              Spacer(),
                              Text(
                                '7th Mar',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: seclabels,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}