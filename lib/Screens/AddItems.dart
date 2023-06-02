import 'package:flutter/material.dart';
import 'package:rentalhub/Constants/Color.dart';
import 'package:rentalhub/Screens/Camer.dart';
import 'package:rentalhub/Widgets/CustomTextField.dart';

import '../Widgets/CustomButton.dart';


class AddItemsPage extends StatefulWidget {
  static String id = "additem";
  const AddItemsPage({Key? key}) : super(key: key);

  @override
  State<AddItemsPage> createState() => _AddItemsPageState();
}

class _AddItemsPageState extends State<AddItemsPage> {
  TextEditingController itemname = new TextEditingController();
  TextEditingController hrrate = new TextEditingController();
  TextEditingController desc = new TextEditingController();

  var _selectedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.cancel_sharp,
            color: Colors.black,
          ),
          onPressed: () {
            // TODO: Add functionality to cancel button
          },
        ),
        title: Text(
          'Item',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.camera_alt,color: kPrimaryColor,),
                        SizedBox(height: 4),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, CameraPage.id);
                          },
                          child: Text(
                            'Upload Image',
                            style: TextStyle(fontSize: 12,color: kPrimaryColor),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.video_call,color: kPrimaryColor,),
                        SizedBox(height: 4),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, CameraPage.id);
                          },
                          child: Text(
                            'Upload Video',
                            style: TextStyle(fontSize: 12,color: kPrimaryColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                CustomTextField(hintText: "Enter ItemName", hintTextColor: hintText, textFieldBackgroundColor: textfieldbg, controller:itemname),

                SizedBox(height: 16),
                Text(
                  'Hourly Rate',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                CustomTextField(hintText: "Enter Hourly Rate", hintTextColor: hintText, textFieldBackgroundColor: textfieldbg, controller:hrrate),

                SizedBox(height: 16),
                Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                CustomTextField(hintText: "Enter Description", hintTextColor: hintText, textFieldBackgroundColor: textfieldbg, controller:desc),

                SizedBox(height: 16),
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
                SizedBox(height: 166),
                //Spacer(),
                CustomButton(onPressed: () {

                },
                  text: 'Post Item',)
              ]
          ),
        ),
      ),
    );
  }
  }