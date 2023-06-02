import 'package:flutter/material.dart';

class CallingPage extends StatelessWidget {
  static const String id = "call";
  const CallingPage({
    Key? key,
    required this.callerName,
    required this.callingTime,
  }) : super(key: key);

  final String callerName;
  final String callingTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 580,
            width: double.infinity,
            color: Colors.grey[200],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Caller Name',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Calling Time',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.mic_off,
                  size: 24,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 24),
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.volume_off,
                  size: 24,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 24),
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.pause,
                  size: 24,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: 32),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 28,
            child: Icon(
              Icons.call_end,
              size: 32,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}