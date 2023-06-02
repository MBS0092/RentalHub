import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentalhub/Constants/Color.dart';
import 'package:rentalhub/Screens/AddItems.dart';
import 'package:rentalhub/Screens/Calling.dart';
import 'package:rentalhub/Screens/Camer.dart';
import 'package:rentalhub/Screens/ChatPage.dart';
import 'package:rentalhub/Screens/EditProfile.dart';
import 'package:rentalhub/Screens/EmailVerification.dart';
import 'package:rentalhub/Screens/ForgotPassword.dart';
import 'package:rentalhub/Screens/HomePage.dart';
import 'package:rentalhub/Screens/Profile.dart';
import 'package:rentalhub/Screens/SignUp.dart';
import 'package:rentalhub/Screens/VideoCall.dart';
import 'package:rentalhub/Screens/report.dart';
import 'package:rentalhub/Screens/specitem.dart';


import 'Screens/IndividulaChatpage.dart';
import 'Screens/Login.dart';

import 'package:firebase_core/firebase_core.dart';
import 'Screens/Search.dart';
import 'Screens/SearchResults.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(

  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: Text('Rental App', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: kPrimaryColor,
          nextScreen: Login()),

      initialRoute: '/',
      routes: {
        Login.id : (context) => Login(),
        SignUp.id : (context) => SignUp(),
        HomePage.id : (context) => HomePage(),
        EmailVerification.id : (context) => EmailVerification(),
        ForgotPassword.id : (context) => ForgotPassword(),
        AddItemsPage.id : (context) => AddItemsPage(),
        IndividualChatPage.id : (context) => IndividualChatPage(),
        ChatPage.id: (context) => ChatPage(),
        Search.id : (context) => Search(),
        Profile.id : (context) => Profile(),
        SpecificItemPage.id : (context) => SpecificItemPage(),
        SearchResult.id : (context) => SearchResult(),
        ReportPage.id : (context) => ReportPage(),
        CameraPage.id : (context) => CameraPage(),
        EditProfile.id : (context) => EditProfile(),
        CallingPage.id : (context) => CallingPage(callingTime: '', callerName: '',),
        VideoPage.id : (context) => VideoPage(callerName: '', callingTime: ''),



       },
    );
  }
}
