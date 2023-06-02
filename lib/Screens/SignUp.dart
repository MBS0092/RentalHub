import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rentalhub/Screens/EmailVerification.dart';
import 'package:rentalhub/Screens/HomePage.dart';
import 'package:rentalhub/Screens/Login.dart';

import '../Constants/Color.dart';
import '../Models/UserModel.dart';
import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';

class SignUp extends StatefulWidget {
  static String id = "signup";

  static String currentUid = "";

  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //String _selectedCountry;
  //String _selectedCity;
  TextEditingController passwordcontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController phonecontroller = new TextEditingController();
  TextEditingController namecontroller = new TextEditingController();

  var _selectedCity;
  var _selectedCountry;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left:52.0,top:30.0),
                child: Text(
                  'Renting App',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w800,
                    color: mainText,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 25),
              Text(
                'Registration',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: labelsText),
              ),
              SizedBox(height: 20),
              Text(
                'Name',
                style: TextStyle(fontSize: 14, color: labelsText),
              ),
              SizedBox(height: 10),
              CustomTextField(
                hintText: 'Enter name',
                hintTextColor: hintText,
                textFieldBackgroundColor: textfieldbg,
                controller: namecontroller,
              ),
              SizedBox(height: 10),
              Text(
                'Email',
                style: TextStyle(fontSize: 14, color: labelsText),
              ),
              SizedBox(height: 10),
              CustomTextField(
                hintText: 'Enter email',
                hintTextColor: hintText,
                textFieldBackgroundColor: textfieldbg,
                controller: emailcontroller,
              ),
              SizedBox(height: 10),
              Text(
                'Contact Number',
                style: TextStyle(fontSize: 14, color: labelsText),
              ),
              SizedBox(height: 10),
              CustomTextField(
                hintText: 'Enter contact number',
                hintTextColor: hintText,
                textFieldBackgroundColor: textfieldbg,
                controller: phonecontroller,
              ),
              SizedBox(height: 10),
              Text(
                'Password',
                style: TextStyle(fontSize: 14, color: labelsText),
              ),
              SizedBox(height: 10),
              CustomTextField(
                hintText: 'Enter Password',
                hintTextColor: hintText,
                textFieldBackgroundColor: textfieldbg,
                controller: passwordcontroller,
              ),
              SizedBox(height: 10),

              Text(
                'Country',
                style: TextStyle(fontSize: 14, color: labelsText),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: textfieldbg,
                ),
                child: DropdownButtonFormField(
                  value: _selectedCountry,
                  items: [
                    DropdownMenuItem(
                      child: Text('Pakistan'),
                      value: 'Pak',
                    ),
                    DropdownMenuItem(
                      child: Text('India'),
                      value: 'Ind',
                    ),
                    DropdownMenuItem(
                      child: Text('China'),
                      value: 'Ch',
                    ),
                  ],
                  decoration: InputDecoration(
                    hintText: 'Select Country',
                    hintStyle: TextStyle(color: hintText),
                    border: InputBorder.none,
                  ),
                  onChanged: (value) {
                    setState(() {
                      _selectedCountry = value;
                    });
                  },
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'City',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: textfieldbg,
                ),
                child: DropdownButtonFormField(
                  value: _selectedCity,
                  items: [
                    DropdownMenuItem(
                      child: Text('Islamabad'),
                      value: 'Isl',
                    ),
                    DropdownMenuItem(
                      child: Text('Lahore'),
                      value: 'lh',
                    ),
                    DropdownMenuItem(
                      child: Text('Bejing'),
                      value: 'bjing',
                    ),
                  ],
                  decoration: InputDecoration(
                    hintText: 'Select City',
                    hintStyle: TextStyle(color: hintText),
                    border: InputBorder.none,
                  ),
                  onChanged: (value) {
                    setState(() {
                      _selectedCity = value;
                    });
                  },
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  text: 'Sign Up',
                  onPressed: () async {

                    print("clicked");
                    print(emailcontroller.text+passwordcontroller.text);

                   String? ret =  await createUserWithEmailAndPassword(emailcontroller.text, passwordcontroller.text, namecontroller.text, phonecontroller.text, _selectedCountry, _selectedCity );

                   print(ret);



                  },
                ),
              ),
              SizedBox(height: 20.0),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Login.id);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16,
                      color: hintText,
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }


  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String?> createUserWithEmailAndPassword(String email, String password, String name, String phone, String Country, String city ) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );

      User? user = userCredential.user;

      if (user != null) {

        UserModel userModel = UserModel();

        userModel.email = user.email;
        userModel.uid = user.uid;
        userModel.name = name;
        userModel.phone = phone;
        userModel.country = Country;
        userModel.city= city;

        // Update user profile in Firestore
        await _firestore.collection('users').doc(user.uid).set(userModel.tomap());
        // Return user ID

        Navigator.pushNamed(context, EmailVerification.id);

        setState(() {
          SignUp.currentUid = user.uid;
        });

        return user.uid;

      } else {
        return null;
      }
    }
    on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      }
      else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      }
      return e.message;
    } catch (e) {
      return e.toString();
    }
  }

  // String? validateEmail(String email) {
  //   if (email.isEmpty) {
  //     return 'Please enter an email address.';
  //   } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
  //     return 'Please enter a valid email address.';
  //   }
  //   return null;
  // }
  //
  // String? validatePassword(String password) {
  //   if (password.isEmpty) {
  //     return 'Please enter a password.';
  //   } else if (password.length < 6) {
  //     return 'Password must be at least 6 characters.';
  //   }
  //   return null;
  // }

}