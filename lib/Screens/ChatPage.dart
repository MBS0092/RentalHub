import 'package:flutter/material.dart';


import '../Constants/Color.dart';
import 'AddItems.dart';
import 'HomePage.dart';
import 'IndividulaChatpage.dart';
import 'Profile.dart';
import 'Search.dart';

class ChatPage extends StatefulWidget {
  static String id = "chats";
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int _currentIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 15, right: 30),
          child: Text('Chat', style: TextStyle(color: labelsText, ),),
        ),

        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: SafeArea(

          child: Column(
            children: [
              Divider(),
              Container(
                  width: 400,
                  height: 300,

                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: CircleAvatar(
                            child: Icon(Icons.account_circle)
                        ),
                        title: Text("Makenna Dias",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: seclabels,
                          ),
                        ),
                        subtitle: Text(
                          '1 new message ',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: kPrimaryColor,
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, IndividualChatPage.id);
                          },
                          icon: Icon(Icons.arrow_forward_ios,color: seclabels,),


                        ),
                        onTap: () {
                          // Handle chat item tap
                        },
                      );
                    },
                  )

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