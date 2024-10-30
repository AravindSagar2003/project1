import 'package:flutter/material.dart';

import 'Add alarmpage.dart';
import 'SleepTracker.dart';

class SleepScheduleScreen extends StatelessWidget {
  final List<Map<String, String>> daysWithDates = [
    {'day': 'Mon', 'date': '17'},
    {'day': 'Tue', 'date': '18'},
    {'day': 'Wed', 'date': '19'},
    {'day': 'Thu', 'date': '20'},
    {'day': 'Fri', 'date': '21'},
    {'day': 'Sat', 'date': '22'},
    {'day': 'Sun', 'date': '23'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Sleep Schedule'),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildIdealSleepCard(),
            SizedBox(height: 16),
            _buildSchedule(),
            SizedBox(height: 16),
            _buildSleepInfo(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AlarmScreen()),);

          // Define your action here
          print('Floating Action Button Pressed');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
    );
  }

  Widget _buildIdealSleepCard() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            'asset/images/moonanime.png', // Replace with your image path
            width: 50,
            height: 50,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ideal Hours for Sleep',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                '8 hours 30 minutes',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: Text('Learn More'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSchedule() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Schedule',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: daysWithDates.map((dayWithDate) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: DateWidget(
                  date: dayWithDate['date']!,
                  day: dayWithDate['day']!,
                ),
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 16),
        _buildScheduleItem('Bedtime', '09:00pm', '6 hours\n22 minutes', 'asset/images/Icon-Bed.png'),
        SizedBox(height: 8),
        _buildScheduleItem('Alarm', '05:10am', '14 hours\n30 minutes', 'asset/images/alarm-clock.png'),
      ],
    );
  }

  Widget _buildScheduleItem(String title, String time, String duration, String imagePath) {
    return InkWell(
      onTap: () {
        // Define your action here
        print('$title tapped');
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  imagePath,
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$time, $duration',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            Switch(
              value: true,
              onChanged: (bool value) {},
              activeColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSleepInfo() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'You will get 8 hours 10 minutes for tonight',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          LinearProgressIndicator(
            value: 0.96,
            backgroundColor: Colors.purple.shade100,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}

class DateWidget extends StatefulWidget {
  final String date;
  final String day;

  DateWidget({
    required this.date,
    required this.day,
  });

  @override
  _DateWidgetState createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        print('${widget.day} ${widget.date} tapped');
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: isSelected ? Colors.purple : Colors.grey,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.day,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: isSelected ? Colors.white : Colors.black,),
            ),
            SizedBox(height: 4),
            Text(
              widget.date,
              style: TextStyle(fontSize: 14,color: isSelected ? Colors.white : Colors.black,),
            ),
          ],
        ),
      ),
    );
  }
}
