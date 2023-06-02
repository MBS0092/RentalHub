import 'package:flutter/material.dart';
import 'package:rentalhub/Constants/Color.dart';

class EmailVerification extends StatefulWidget {
  static String id = "emailverification";

  const EmailVerification({Key? key}) : super(key: key);

  @override
  _EmailVerificationState createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text('Email Verification', style: TextStyle(color: labelsText),),
        ),

        backgroundColor: Colors.transparent,
        elevation: 0,

        leading: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: labelsText),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),



      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Divider(

              ),


              SizedBox(height: 20.0),
              Text(
                "Enter the code sent to your email",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: labelsText,
                ),
              ),
              SizedBox(height: 12.0),
              Text(
                "Resend code in 30s",
                style: TextStyle(
                  fontSize: 16.0,
                  color: kPrimaryColor,
                ),
              ),
              SizedBox(height: 32.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCodeTextField(),
                  _buildCodeTextField(),
                  _buildCodeTextField(),
                  _buildCodeTextField(),
                  _buildCodeTextField(),
                ],
              ),
              SizedBox(height: 32.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCircleButton('1'),
                  _buildCircleButton('2'),
                  _buildCircleButton('3'),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCircleButton('4'),
                  _buildCircleButton('5'),
                  _buildCircleButton('6'),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCircleButton('7'),
                  _buildCircleButton('8'),
                  _buildCircleButton('9'),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 125),
                    child: _buildCircleButton('0'),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 20),
                    child: _buildEraserButton(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCodeTextField() {
    return Container(
      height: 56.0,
      width: 52.0,
      child: TextField(
        maxLength: 1,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          counter: Offstage(),
          contentPadding: EdgeInsets.all(16.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: textfieldbg),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: textfieldbg),
          ),
        ),
      ),
    );
  }

  Widget _buildCircleButton(String text) {
    return Container(
      width: 78,
      height: 78,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ),
    );
  }

  Widget _buildEraserButton() {
    return Container(
      width: 78,
      height: 78,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,

      ),
      child: Icon(
        Icons.backspace,
        color: buttonText,
        size: 24,
      ),
    );
  }


}
