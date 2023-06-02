import 'package:flutter/material.dart';
import 'package:rentalhub/Screens/report.dart';

import '../Constants/Color.dart';
import '../Widgets/CustomButton.dart';


class SpecificItemPage extends StatefulWidget {
  static const String id = "spec";
  const SpecificItemPage({Key? key}) : super(key: key);

  @override
  State<SpecificItemPage> createState() => _SpecificItemPageState();
}

class _SpecificItemPageState extends State<SpecificItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            children: [
              Text(
                'Item',
                style: TextStyle(color: labelsText),
              ),
              Spacer(),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ReportPage.id);
                  },
                  child: Text(
                    'Report',
                    style: TextStyle(
                      fontSize: 16,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),

        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: labelsText),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ]),),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 300,
            color: Colors.grey[300],
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding:EdgeInsets.only(right:200.0),
                      child: Text("\$12/hr",
                          style: TextStyle(fontSize: 20, color: Colors.orange)),
                    ),
                    Text("Name of the item comes here",
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Icon(Icons.location_on_outlined, color: hintText, size: 20),
                SizedBox(width: 5),
                Text("Location",
                    style: TextStyle(fontSize: 12, color: hintText)),
                Spacer(),
                Text("7th Mar, 2023",
                    style: TextStyle(fontSize: 12, color: hintText)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed cursus bibendum libero, eu consectetur quam pretium et. Sed in magna faucibus, rhoncus enim eu, tincidunt quam.",
                style: TextStyle(fontSize: 16, color: Colors.black)),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/profile_pic.png"),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: labelsText)),
                    SizedBox(height: 5),
                    Text("24 items rented",
                        style:
                        TextStyle(fontSize: 12, color: hintText )),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.chat_bubble_outline_sharp, color: hintText , size: 30),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: CustomButton(
                text: 'Rent it',
                onPressed: () {},
              ),
            ),
          ),
        ]),
      ),
    );
  }
}