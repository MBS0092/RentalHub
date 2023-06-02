import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rentalhub/Screens/ForgotPassword.dart';
import 'package:rentalhub/Screens/HomePage.dart';
import 'package:rentalhub/Screens/SignUp.dart';
import '../Constants/Color.dart';
import '../Models/UserModel.dart';
import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';


class Login extends StatefulWidget {

  static String id = "login";

  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:90.0),
                  child: Text(
                    'Renting App',
                    style: TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                      color: mainText,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: labelsText,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: labelsText,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                CustomTextField(
                  hintText: 'Enter email',
                  hintTextColor: hintText,
                  textFieldBackgroundColor: textfieldbg,
                  controller: emailcontroller,
                ),
                SizedBox(height: 20.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                CustomTextField(
                  hintText: 'Enter password',
                  hintTextColor: hintText,
                  textFieldBackgroundColor: textfieldbg,
                  controller: passwordcontroller,
                ),

                SizedBox(height: 10.0),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ForgotPassword.id);
                    },

                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10.0),

                SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    text: 'Login',
                    onPressed: () async {
                      Navigator.pushNamed(context, HomePage.id);
                      // String uid = (await signInWithEmailAndPassword(emailcontroller.text, passwordcontroller.text))!;
                      //
                      //     await FirebaseFirestore.instance
                      //         .collection('users')
                      //         .doc(SignUp.currentUid)
                      //         .get()
                      //         .then((value) {
                      //
                      //       if (value.exists) {
                      //         HomePage.userMod = UserModel.fromMap(value.data());
                      //
                      //         Navigator.pushNamed(context, HomePage.id);
                      //
                      //         setState(() {});
                      //       }
                      //
                      //       else{
                      //         print("null data ");
                      //       }
                      //     }).catchError((e) {
                      //       print(e);
                      //     });



                        // User? user;
                        try {
                          await FirebaseAuth.instance
                              .signInWithEmailAndPassword(email: emailcontroller.text, password: passwordcontroller.text).then((uid) => {


                              Navigator.pushNamed(context, HomePage.id)

                          });
                        }
                        catch(e)
                        {
                          print(e);
                        }



                    },
                  ),
                ),
                SizedBox(height:120.0),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUp.id);
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 16,
                      color: hintText,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<String?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      User? user = userCredential.user;



      setState(() {
        SignUp.currentUid = user!.uid;
      });

      return user!.uid;

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      }
      return e.message;
    } catch (e) {
      return e.toString();
    }
  }

}