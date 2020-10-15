import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:tomate/model/model.dart';
import 'package:tomate/screens/screens.dart';
import 'package:tomate/utilities/colors.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

  _taskBuilder(BuildContext context, int index) {
    Task items = tasks[index];
    return CheckboxListTile(
      title: Text(items.taskName),
      key: Key(items.taskName),
      value: items.taskStatus,
      onChanged: (value){
       setState(() {
         items.taskStatus = value;
       });
      },
      controlAffinity: ListTileControlAffinity.platform,

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  'My Tasks',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                height: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32),
                  ),
                  color: Colors.white,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: tasks.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _taskBuilder(
                      context,
                      index,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
