import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rentalhub/Constants/Color.dart';
import 'package:rentalhub/Screens/Calling.dart';
import 'package:rentalhub/Screens/VideoCall.dart';
import 'package:rentalhub/Widgets/CustomButton.dart';
import 'package:rentalhub/Widgets/CustomTextField.dart';

import 'Camer.dart';

class IndividualChatPage extends StatelessWidget {
 static String id = "privatechats";
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    
    TextEditingController msg = new TextEditingController();
     
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "Daud",
              style: TextStyle(color: labelsText),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.call),
              color: seclabels,
              onPressed: () {
                Navigator.pushNamed(context,CallingPage.id);
              },
            ),
            IconButton(
              icon: Icon(Icons.videocam_outlined),
              color: seclabels ,
              onPressed: () {
                Navigator.pushNamed(context,VideoPage.id);
              },
            ),
          ],
        ),

        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Expanded(
            child: ListView(
              reverse: true,
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              children: [
                ChatMessage(
                  message: "Hello!",
                  isMe: true,
                  time: "9:30 AM",
                  isSentByMe: false,
                  timeStamp: DateTime.now(),
                ),
                ChatMessage(
                  message: "Hi there!",
                  isMe: false,
                  time: "9:32 AM",
                  timeStamp: DateTime.now(),
                  isSentByMe: true,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                 child: CustomTextField(hintText: 'Enter Reply', textFieldBackgroundColor: textfieldbg, controller: msg, hintTextColor: hintText,),
                ),

                SizedBox(width: 8.0),


                SizedBox(width: 8.0),
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Send",
                    style: TextStyle(fontSize: 12.0, color: Colors.white),
                  ),
                  color: Colors.orange,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ],
            ),
          ),

          Container(
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.camera_alt_outlined),
                  onPressed: () {
                    Navigator.pushNamed(context, CameraPage.id);
                  },
                  color: Colors.grey,
                  iconSize: 25.0,
                ),
                IconButton(
                  icon: Icon(Icons.image_outlined),
                  onPressed: () {},
                  color: Colors.grey,
                  iconSize: 25.0,
                ),
                IconButton(
                  icon: Icon(Icons.insert_drive_file_outlined),
                  onPressed: () {},
                  color: Colors.grey,
                  iconSize: 25.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String message;
  final bool isSentByMe;
  final DateTime timeStamp;

  const ChatMessage({
    Key? key,
    required this.message,
    required this.isSentByMe,
    required this.timeStamp, required String time, required bool isMe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment:
        isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isSentByMe) ...[
            CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://randomuser.me/api/portraits/women/1.jpg'),
            ),
            SizedBox(width: 10),
          ],
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: isSentByMe ? Colors.orangeAccent : Colors.grey[200],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message,
                    style: TextStyle(
                      color: isSentByMe ? Colors.white : Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '${timeStamp.hour}:${timeStamp.minute}',
                    style: TextStyle(
                      color: isSentByMe ? Colors.white70 : Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isSentByMe) SizedBox(width: 10),
          if (isSentByMe) ...[
            Text(
              '${timeStamp.hour}:${timeStamp.minute}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            SizedBox(width: 10),
            CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://randomuser.me/api/portraits/men/1.jpg'),
            ),
          ],
        ],
      ),
    );
  }
}