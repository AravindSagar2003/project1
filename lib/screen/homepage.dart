import 'package:flutter/material.dart';

import 'activity tracker.dart';
import 'notificationpage.dart';


class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Welcome Back,',
                    style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                  ),
                  IconButton(icon:Icon(Icons.notifications_none),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()),);

                  },

                  ) ],
              ),
              Text(
                'Stefani Wong',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BMI (Body Mass Index)',
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'You have a normal weight',
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                       Image(image:AssetImage('asset/images/Banner--Pie-Ellipse.png'),height: 100,width: 100,)

                      ],
                      
                      
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {

// View more action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text('View More'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today Target',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ActivityTrackerScreen()),);


// Check action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text('Check'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Activity Status',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Heart Rate', style: TextStyle(fontSize: 16)),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '78 BPM',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight
                              .bold),
                        ),
                        Text('3mins ago', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text('Water Intake', style: TextStyle(fontSize: 16)),
                    SizedBox(height: 8),
                    Text('4 Liters', style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    LinearProgressIndicator(
                      value: 0.8,
                      backgroundColor: Colors.grey[200],
                      color: Colors.blue[300],
                    ),
                    SizedBox(height: 16),
                    Text('Sleep', style: TextStyle(fontSize: 16)),
                    SizedBox(height: 8),
                    Text('8h 20m', style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    LinearProgressIndicator(
                      value: 0.7,
                      backgroundColor: Colors.grey[200],
                      color: Colors.purple[300],
                    ),
                    SizedBox(height: 16),
                    Text('Calories', style: TextStyle(fontSize: 16)),
                    SizedBox(height: 8),
                    Text('760 KCal', style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    LinearProgressIndicator(
                      value: 0.65,
                      backgroundColor: Colors.grey[200],
                      color: Colors.red[300],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Workout Progress',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Fri, 28 May', style: TextStyle(fontSize: 16)),
                        Text('90%', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text('Upperbody Workout', style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    LinearProgressIndicator(
                      value: 0.9,
                      backgroundColor: Colors.grey[200],
                      color: Colors.green[300],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sun', style: TextStyle(fontSize: 16)),
                        Text('Sat', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('40%', style: TextStyle(fontSize: 16)),
                        Text('100%', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Latest Workout',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/fullbody_workout.png'), // Add your image
                ),
                title: Text('Fullbody Workout'),
                subtitle: Text('180 Calories Burn | 20 minutes'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/lowerbody_workout.png'), // Add your image
                ),
                title: Text('Lowerbody Workout'),
                subtitle: Text('200 Calories Burn | 30 minutes'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/ab_workout.png'), // Add your image
                ),
                title: Text('Ab Workout'),
                subtitle: Text('150 Calories Burn | 15 minutes'),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}