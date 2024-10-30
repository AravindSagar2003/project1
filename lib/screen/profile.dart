import 'package:flutter/material.dart';
import 'package:project1/screen/workoutfinished.dart';
import 'package:project1/screen/workouttracker.dart';

import 'Addschedule.dart';


class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',textAlign: TextAlign.center,),

        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('asset/images/profile dp.png'), // Replace with your image asset
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Stefani Wong', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('Lose a Fat Program'),
                  ],
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Edit'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(label: 'Height', value: '180cm'),
                InfoCard(label: 'Weight', value: '65kg'),
                InfoCard(label: 'Age', value: '22yo'),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  SectionTitle(title: 'Account'),
                  ListTile(
                    leading: Icon(Icons.person_outline),
                    title: Text('Personal Data'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){},

                  ),
                  ListTile(
                    leading: Icon(Icons.emoji_events_outlined),
                    title: Text('Achievement'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text('Activity History'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.fitness_center),
                    title: Text('Workout Progress'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkoutTrackerScreen()),);

                    },
                  ),
                  SectionTitle(title: 'Notification'),
                  SwitchListTile(
                    value: true,
                    onChanged: (bool value) {},
                    title: Text('Pop-up Notification'),
                  ),
                  SectionTitle(title: 'Other'),
                  ListTile(
                    leading: Icon(Icons.contact_mail_outlined),
                    title: Text('Contact Us'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.privacy_tip_outlined),
                    title: Text('Privacy Policy'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.settings_outlined),
                    title: Text('Settings'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blueAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',


          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 3, // Profile tab selected
        onTap: (index) {},
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkoutFinishedScreen()),);

        },
        child: Icon(Icons.search),
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class InfoCard extends StatelessWidget {
  final String label;
  final String value;

  InfoCard({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(label),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}