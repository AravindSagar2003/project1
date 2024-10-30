import 'package:flutter/material.dart';


class NotificationScreen extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {
      'title': 'Hey, it’s time for lunch',
      'time': 'About 1 minutes ago',
      'icon': 'asset/images/notilunch.png', // Replace with your icon path
    },
    {
      'title': 'Don’t miss your lowerbody workout',
      'time': 'About 3 hours ago',
      'icon': 'asset/images/lowerbodywork.png', // Replace with your icon path
    },
    {
      'title': 'Hey, let’s add some meals for your b...',
      'time': 'About 3 hours ago',
      'icon': 'asset/images/Meal.png', // Replace with your icon path
    },
    {
      'title': 'Congratulations, You have finished A...',
      'time': '29 May',
      'icon': 'asset/images/finishedwork.png', // Replace with your icon path
    },
    {
      'title': 'Hey, it’s time for lunch',
      'time': '8 April',
      'icon': 'assets/lunch_icon.png', // Replace with your icon path
    },
    {
      'title': 'Ups, You have missed your Lowerbo...',
      'time': '3 April',
      'icon': 'asset/images/lowerbody.png', // Replace with your icon path
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        actions: [
          IconButton(icon:Icon(Icons.more_horiz), onPressed: () {  },),
        ],
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(notifications[index]['icon']!),
            ),
            title: Text(notifications[index]['title']!),
            subtitle: Text(notifications[index]['time']!),
            trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {  },),
          );
        },
      ),
    );
  }
}