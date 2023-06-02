import 'package:flutter/material.dart';
import 'package:rentalhub/Screens/Profile.dart';

import '../Constants/Color.dart';
import '../Widgets/CustomTextField.dart';

class EditProfile extends StatefulWidget {
  static String id = "editprofile";
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  //String _selectedCountry;
  //String _selectedCity;
  TextEditingController passwordcontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController phonecontroller = new TextEditingController();
  TextEditingController namecontroller = new TextEditingController();

  var _selectedCity;
  var _selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: labelsText,
        ),
        //automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Text(
              "Edit Profile",
              style: TextStyle(
                color: labelsText,
              ),
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                // TODO: Add functionality to cancel button
              },
              child: Text(
                "Save Changes",
                style: TextStyle(
                  color: kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Name',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            CustomTextField(
                hintText: "Enter Name",
                hintTextColor: hintText,
                textFieldBackgroundColor: textfieldbg,
                controller: namecontroller),
            SizedBox(height: 16),
            Text(
              'Email',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            CustomTextField(
                hintText: "Enter Email",
                hintTextColor: hintText,
                textFieldBackgroundColor: textfieldbg,
                controller: emailcontroller),
            SizedBox(height: 16),
            Text(
              'Contact Number',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            CustomTextField(
                hintText: "Enter Contact Number",
                hintTextColor: hintText,
                textFieldBackgroundColor: textfieldbg,
                controller: phonecontroller),
            SizedBox(height: 16),
            Text(
              'Country',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10,),
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
          ]),
        ),
      ),
    );
  }
}

