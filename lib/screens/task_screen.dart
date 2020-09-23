import 'package:flutter/material.dart';
import 'package:tomate/utitlies/colors.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 48),
          child: Column(
            children: [
              Text('Task', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
