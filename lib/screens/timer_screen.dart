import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:tomate/utilities/colors.dart';

int initalMinutes = 24;
int initialSeconds = 60;
String time = '25:00';
var duration = const Duration(seconds: 1);
var watch = Stopwatch();
FlutterSound sound = new FlutterSound();

class TimerScreen extends StatefulWidget {
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Session',
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              height: 84,
            ),
            Text(
              '25:00',
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 84,
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              onPressed: () => print('testing button'),
              child: Text('Start'),
              height: 130,
              minWidth: 130,
              color: kPrimaryLightColor,
            ),
          ],
        ),
      ),
    );
  }
  void _startPomodoro(){
    if(_isPlaying()){
      watch.stop();
    }else{
      watch.start();
      _startTimer();
    }
  }

  bool _isPlaying(){
    return watch.isRunning;
  }

  void _startTimer(){

  }
}
