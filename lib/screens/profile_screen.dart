import 'package:flutter/material.dart';
import 'package:tomate/utilities/colors.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 48),
          child: Column(
            children: [
              Text('Profile', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
