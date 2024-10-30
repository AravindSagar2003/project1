import 'package:flutter/material.dart';
import 'package:project1/screen/Add%20alarmpage.dart';
import 'package:project1/screen/Addschedule.dart';
import 'package:project1/screen/Blueberrypancake%20page.dart';
import 'package:project1/screen/Breakfastpagr.dart';
import 'package:project1/screen/ExtrataskUI.dart';
import 'package:project1/screen/Fullbodyworkoutpage.dart';
import 'package:project1/screen/Meal%20planner.dart';
import 'package:project1/screen/Meal%20schedule.dart';
import 'package:project1/screen/ProgressPhotopage.dart';
import 'package:project1/screen/SleepTracker.dart';
import 'package:project1/screen/activity%20tracker.dart';
import 'package:project1/screen/comparison%20page.dart';
import 'package:project1/screen/homepage.dart';
import 'package:project1/screen/jumpingjaackpage.dart';
import 'package:project1/screen/listofmap.dart';
import 'package:project1/screen/loginend.dart';
import 'package:project1/screen/loginpage.dart';
import 'package:project1/screen/notificationpage.dart';
import 'package:project1/screen/onboarding1.dart';
import 'package:project1/screen/onboarding6.dart';
import 'package:project1/screen/onboarding7.dart';
import 'package:project1/screen/onboarding8.dart';
import 'package:project1/screen/onboarding9.dart';
import 'package:project1/screen/profile.dart';
import 'package:project1/screen/sleep%20schedulepage.dart';
import 'package:project1/screen/welcomeScreen.dart';
import 'package:project1/screen/workoutfinished.dart';
import 'package:project1/screen/workoutscedulepage.dart';
import 'package:project1/screen/workouttracker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

