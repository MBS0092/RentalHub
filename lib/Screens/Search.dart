import 'package:flutter/material.dart';

import '../Constants/Color.dart';
import 'AddItems.dart';
import 'ChatPage.dart';
import 'HomePage.dart';
import 'Profile.dart';

class Search extends StatefulWidget {
  static String id = "search";
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int _currentIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
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
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Text(
                  'Find Exactly what you need!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: mainText,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: SizedBox(
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: textfieldbg,
                      filled: true,
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: hintText,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 18, 16, 3),
                child: Text(
                  'Recent Searches',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: seclabels,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Item Number One',
                  style: TextStyle(
                    fontSize: 18,
                    color: seclabels,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text(
                  'Item Number Two',
                  style: TextStyle(
                    fontSize: 18,
                    color: seclabels,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text(
                  'Item Number Three',
                  style: TextStyle(
                    fontSize: 18,
                    color: seclabels,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 3),
                child: Text(
                  'Popular Searches',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: seclabels,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Item Number One',
                  style: TextStyle(
                    fontSize: 18,
                    color: seclabels,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text(
                  'Item Number Two',
                  style: TextStyle(
                    fontSize: 18,
                    color: seclabels,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text(
                  'Item Number Three',
                  style: TextStyle(
                    fontSize: 18,
                    color: seclabels,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text(
                  'Item Number Four',
                  style: TextStyle(
                    fontSize: 18,
                    color: seclabels,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward),
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