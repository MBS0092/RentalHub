import 'package:flutter/material.dart';
import 'package:rentalhub/Screens/specitem.dart';

import '../Constants/Color.dart';
import 'AddItems.dart';
import 'ChatPage.dart';
import 'EditProfile.dart';
import 'HomePage.dart';
import 'Search.dart';

class Profile extends StatefulWidget {
  static const String id = "profile";
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _currentIndex = 4;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Text(
              "Profile",
              style: TextStyle(
                color: labelsText,
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.mode_edit_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(context, EditProfile.id);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    height: 150, // Set the height to fill the screen
                    width: double.infinity, // Set the width to fill the screen
                    color: Colors.grey[300],
                  ),
                  Positioned(
                    top: 150 - 70,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            'https://www.example.com/profile-image.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70,),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Zain Ul Hassan',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.grey[400]),
                    SizedBox(width: 5),
                    Text(
                      'Location',
                      style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                    ),
                    Spacer(),
                    Text(
                      '1 items posted',
                      style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '3 items rented',
                      style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Items You\'ve Rented',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, SpecificItemPage.id);
                },
                child: Container(
                  width: 400,
                  height: 215,
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
                padding: EdgeInsets.all(10),
                child: Text(
                  'Your Items',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, SpecificItemPage.id);
                },
                child: Container(
                  width: 400,
                  height: 215,
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
            ],
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
                  onTap: () {
                    print("clicked");
                    Navigator.pushNamed(context, HomePage.id);
                  },
                  child: Icon(Icons.home_outlined)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    print("clicked");
                    Navigator.pushNamed(context, Search.id);
                  },
                  child: Icon(Icons.search)),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
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
                  onTap: () {
                    print("clicked");
                    Navigator.pushNamed(context, ChatPage.id);
                  },
                  child: Icon(Icons.chat_bubble_outline_sharp)),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
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
