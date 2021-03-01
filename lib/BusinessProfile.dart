import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class ClassBusinessProfile extends StatefulWidget {
  @override
  _ClassBusinessProfileState createState() => _ClassBusinessProfileState();
}

class _ClassBusinessProfileState extends State<ClassBusinessProfile> {
  bool isDeliveryAvailable = false;
  bool isDineInAvailable = false;

  CollectionReference col_ref =
  FirebaseFirestore.instance.collection('DetailedBusinessProfile');

  TextEditingController b_name = TextEditingController();
  TextEditingController b_phone = TextEditingController();
  TextEditingController b_delivery = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Firestore Testing'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: b_name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Business Name',
                  hintText: 'Enter Your Business Name',
                  prefixIcon: Icon(Icons.add_business_sharp),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: b_phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  hintText: 'Enter Your Phone Number',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: b_phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  hintText: 'Enter Your Phone Number',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: b_phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  hintText: 'Enter Your Phone Number',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: b_phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  hintText: 'Enter Your Phone Number',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: b_phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  hintText: 'Enter Your Phone Number',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: b_phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  hintText: 'Enter Your Phone Number',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              TextField(
                controller: b_phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  hintText: 'Enter Your Phone Number',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: b_phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  hintText: 'Enter Your Phone Number',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: b_phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  hintText: 'Enter Your Phone Number',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: b_phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  hintText: 'Enter Your Phone Number',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'IS DINE-IN AVAILABLE?',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 125,
                  ),
                  Switch(

                    value: isDineInAvailable,
                    onChanged: (value) {
                      setState(() {
                        isDineInAvailable = value;
                      });
                      print(isDineInAvailable);
                    },
                    activeTrackColor: Colors.blueGrey,
                    activeColor: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  col_ref.add({
                  'Delivery':isDeliveryAvailable,
                  }).whenComplete(() => print('DONEE'));
                  /* col_ref.add({
                    'Name': b_name.text,
                    'Phone': b_phone.text,
                  }).whenComplete(() => null);
                  b_name.clear();
                  b_phone.clear();*/
                },
                child: Text('SAVE'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SwitchButton extends StatefulWidget {
  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool isSwitched = false;
  String SwitchTitle;

  _SwitchButtonState({String SwitchTitle}) {
    this.SwitchTitle = SwitchTitle;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Text(
          SwitchTitle,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          width: 125,
        ),
        Switch(
          value: isSwitched,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
            });
          },
          activeTrackColor: Colors.blueGrey,
          activeColor: Colors.blue,
        ),
      ],
    );
  }
}
