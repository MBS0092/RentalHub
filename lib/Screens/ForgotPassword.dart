import 'package:flutter/material.dart';
import 'package:rentalhub/Constants/Color.dart';

import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';

class ForgotPassword extends StatefulWidget {
  static String id = "forgotpassword";

  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  TextEditingController emailcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.09),
              Text(
                'Forgot your password?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: 25),

              Text(
                'Email',
                style: TextStyle(
                  fontSize: 14,
                  color: seclabels,
                ),
              ),
              SizedBox(height: 10),

              CustomTextField(
                hintText: 'Enter email',
                hintTextColor: hintText,
                textFieldBackgroundColor: textfieldbg,
                controller: emailcontroller,
              ),


              SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                child: CustomButton(
                    text: 'Reset Password',
                    onPressed: () {

                    },
                  ),

              ),

              SizedBox(
                 height: size.height * 0.52,
              ),

              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Go back',
                    style: TextStyle(
                      fontSize: 16,
                      color: hintText,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}


