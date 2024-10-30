import 'package:flutter/material.dart';
import 'package:project1/screen/onboarding2.dart';

import 'activity tracker.dart';

class secondscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: GoalTrackerCard(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Thirdscreen()),);

          // Add your onPressed code here!
        },
        child: Icon(Icons.arrow_forward,),
        backgroundColor: Colors.blueAccent,
        shape: CircleBorder(
        ),
      ),
    );

  }
}

class GoalTrackerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Center(
              child: Image.asset(
                'asset/images/Frame.png', // replace with your image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 200.0,
          left: 16.0,
          right: 16.0,
          child: Column(
            children: [
              Text(
                'Track Your Goal ',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Don\'t worry if you have trouble determining your goals. We can help you determine your goals and track your goals.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ],
    );
  }
}
