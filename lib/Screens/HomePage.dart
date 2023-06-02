import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rentalhub/Screens/AddItems.dart';
import 'package:rentalhub/Screens/ChatPage.dart';
import 'package:rentalhub/Screens/Search.dart';
import 'package:rentalhub/Screens/SignUp.dart';
import 'package:rentalhub/Screens/specitem.dart';

import '../Constants/Color.dart';
import '../Models/UserModel.dart';
import 'Profile.dart';


class HomePage extends StatefulWidget {
  static UserModel userMod = UserModel();
  static String id = "home";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }



  User? user = FirebaseAuth.instance.currentUser;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Text(
                          'Welcome, ',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500,
                            color: seclabels ,
                          ),
                        ),
                        Text(
                          'Daud',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0 ,left:20.0),
                  child: Text(
                    'Featured Items',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: labelsText,
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, SpecificItemPage.id);
                  },
                  child: Container(
                    width: 400,
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 250,
                          height: 230,
                          margin: EdgeInsets.all(16.0),
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: textfieldborder,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                'https://cdn.pixabay.com/photo/2016/10/07/13/36/tangerines-1721590_960_720.jpg',
                                height: 10.0,
                                width: 10,

                                color: hintText,
                              ),
                              SizedBox(height: 100.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Item Name',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: labelsText,
                                    ),
                                  ),
                                  Text(
                                    '\$10/hr',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
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
                      },

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Row(
                    children: [
                      Text(
                        'Your Items',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: labelsText,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'View All',
                          style: TextStyle(
                            fontSize: 14,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    width: 400,
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 250,
                          height: 230,
                          margin: EdgeInsets.all(16.0),
                          padding: EdgeInsets.all(16.0),
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
                                'assets/images/org.jpeg',
                                height: 400.0,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                color: hintText,
                              ),
                              SizedBox(height: 100.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Item Name',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: labelsText,
                                    ),
                                  ),
                                  Text(
                                    '\$10/hr',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.remove_red_eye_outlined,
                                    size: 12.0,
                                    color: seclabels,
                                  ),
                                  SizedBox(width: 4.0),
                                  Text(
                                    '395',
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
                      },

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0 ,left:20.0),
                  child: Text(
                    'Recent Items',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: labelsText,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    width: 400,
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 250,
                          height: 230,
                          margin: EdgeInsets.all(16.0),
                          padding: EdgeInsets.all(16.0),
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
                                'assets/images/item.jpg',
                                height: 400.0,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                color: hintText,
                              ),
                              SizedBox(height: 100.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Item Name',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: labelsText,
                                    ),
                                  ),
                                  Text(
                                    '\$10/hr',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
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
                      },

                    ),
                  ),
                ),

              ]
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: hintText,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: (){
                    print("clicked");
                    Navigator.pushNamed(context, HomePage.id);
                  },
                  child: Icon(Icons.home_outlined)),
              label: 'Home',
            ),


            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: (){
                    print("clicked");
                    Navigator.pushNamed(context, Search.id);
                  },
                  child: Icon(Icons.search)),
              label: 'Search',
            ),

            BottomNavigationBarItem(
              icon: InkWell(
                onTap: (){
                  print("clicked");
                  Navigator.pushNamed(context, AddItemsPage.id);
                },
                child: CircleAvatar(
                  backgroundColor: kPrimaryColor,
                  child: Icon(Icons.add, color: kBackgroundColor),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: (){
                    print("clicked");
                    Navigator.pushNamed(context, ChatPage.id);
                  },
                  child: Icon(Icons.chat_bubble_outline_sharp)),
              label: 'Chat',
            ),

            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: (){
                    print("clicked");

                    Navigator.pushNamed(context, Profile.id);
                  },
                  child: Icon(Icons.person_outline)),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}