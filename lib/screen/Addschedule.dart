import 'package:flutter/material.dart';
import 'package:project1/screen/Meal%20planner.dart';
import 'package:project1/screen/workoutscedulepage.dart';

class AddScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.pop(context);

                      },
                    ),
                    Text(
                      'Add Schedule',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_today, size: 16),
                        SizedBox(width: 8),
                        Text(
                          'Thu, 27 May 2021',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Time',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '2',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Text(
                          '29',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Text(
                          'AM',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Text(
                          '3',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '30',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'PM',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '4',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Text(
                          '31',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Details Workout',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      leading: Icon(Icons.fitness_center),
                      title: Text('Choose Workout'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Upperbody Workout', style: TextStyle(color: Colors.grey)),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.trending_up),
                      title: Text('Difficulty'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Beginner', style: TextStyle(color: Colors.grey)),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.set_meal),
                      title: Text('Meal Planner'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Beginner', style: TextStyle(color: Colors.grey)),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MealPlannerScreen()),);

                      },
                    ),

                    ListTile(
                      leading: Icon(Icons.repeat),
                      title: Text('Custom Repetitions'),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.fitness_center),
                      title: Text('Custom Weights'),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Save action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                    ),
                    child: Text(
                      'Save',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}