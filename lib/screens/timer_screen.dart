import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:tomate/utilities/colors.dart';

int initialMinutes = 24;
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
      body: _builderTimer(),
    );
  }

  void _startPomodoro() {
    if (_isPlaying()) {
      watch.stop();
    } else {
      watch.start();
      _startTimer();
    }
  }

  void _repeat() {
    watch.stop();
    watch.reset();
    setState(() {
      time = '25:00';
    });
  }

  bool _isPlaying() {
    return watch.isRunning;
  }

  Widget _builderTimer() {
    return Container(
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
            time,
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 84,
          ),
          FlatButton(
            //play
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            onPressed: () => _startPomodoro(),
            child: _isPlaying() ? Text('Pause') : Text('Start'),
            height: 130,
            minWidth: 130,
            color: kPrimaryLightColor,
          ),
          SizedBox(
            height: 24,
          ),
          IconButton(
            icon: Icon(FeatherIcons.repeat), //repeat
            onPressed: () => _repeat(),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }

  void _startTimer() {
    Timer(duration, _keepRunning);
  }

  void _keepRunning() {
    if (watch.isRunning) {
      _startTimer();
    }
    setState(() {
      int currentMinute = int.parse(watch.elapsed.inMinutes.toString());
      int currentSecond = int.parse((watch.elapsed.inSeconds % 60).toString());
      int timerMinutes = initialMinutes - currentMinute;
      int timerSecond = initialSeconds - currentSecond;

      if (timerSecond < 60 && timerSecond >= 0) {
        time = timerMinutes.toString().padLeft(2, '0') +
            ':' +
            timerSecond.toString().padLeft(2, '0');
      }

      if (time == '00:00') {
        _playSong();
      }
    });
  }

  void _playSong() async {
    await sound.startPlayer(
      'https://incompetech.com/music/royalty-free/mp3-royaltyfree/Surf%20Shimmy.mp3',
    );
    _setTimeOutForSong(100000);
  }

  void _setTimeOutForSong([int milliseconds]) {
    const timeout = const Duration(seconds: 10);
    const millisec = const Duration(milliseconds: 1);
    var duration = milliseconds == null ? timeout : millisec * milliseconds;
    Timer(duration, _stopSong);
  }

  void _stopSong() {
    sound.stopPlayer();
  }
}
