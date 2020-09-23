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
    return Card(
      child: ListTile(
        leading: GestureDetector(
          onTap: () => print('check box event'),
          child: Icon(FeatherIcons.square),
        ),
        title: Text(
          items.taskName,
          style: TextStyle(fontSize: 16),
        ),
        trailing: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TimerScreen(),
            ),
          ),
          child: Icon(FeatherIcons.playCircle),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Tasks',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 600,
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
