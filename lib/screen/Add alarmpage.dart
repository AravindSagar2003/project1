import 'package:flutter/material.dart';

class AlarmScreen extends StatefulWidget {
  @override
  AlarmScreenState createState() => AlarmScreenState();
}

class AlarmScreenState extends State<AlarmScreen> {
  TimeOfDay _bedtime = TimeOfDay(hour: 21, minute: 0);
  Duration _hoursOfSleep = Duration(hours: 8, minutes: 30);
  bool _vibrateOnAlarm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Add Alarm', style: TextStyle(color: Colors.black)),
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
            ListTile(
              leading: Icon(Icons.bed, color: Colors.black),
              title: Text('Bedtime', style: TextStyle(color: Colors.black)),
              trailing: Text(_formatTime(_bedtime), style: TextStyle(color: Colors.black)),
              onTap: () async {
                TimeOfDay? picked = await showTimePicker(
                  context: context,
                  initialTime: _bedtime,
                );
                if (picked != null && picked != _bedtime) {
                  setState(() {
                    _bedtime = picked;
                  });
                }
              },
            ),
            ListTile(
              leading: Icon(Icons.timelapse, color: Colors.black),
              title: Text('Hours of sleep', style: TextStyle(color: Colors.black)),
              trailing: Text('${_hoursOfSleep.inHours}h ${_hoursOfSleep.inMinutes % 60}min',
                  style: TextStyle(color: Colors.black)),
              onTap: () async {
                Duration? picked = await showDurationPicker(
                  context: context,
                  initialTime: _hoursOfSleep,
                );
                if (picked != null && picked != _hoursOfSleep) {
                  setState(() {
                    _hoursOfSleep = picked;
                  });
                }
              },
            ),
            ListTile(
              leading: Icon(Icons.repeat, color: Colors.black),
              title: Text('Repeat', style: TextStyle(color: Colors.black)),
              trailing: Text('Mon to Fri', style: TextStyle(color: Colors.black)),
              onTap: () {},
            ),
            SwitchListTile(
              title: Text('Vibrate When Alarm Sound', style: TextStyle(color: Colors.black)),
              value: _vibrateOnAlarm,
              onChanged: (bool value) {
                setState(() {
                  _vibrateOnAlarm = value;
                });
              },
              activeColor: Colors.purple,
              secondary: Icon(Icons.vibration, color: Colors.black),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[300],
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text('Add', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }

  String _formatTime(TimeOfDay time) {
    final hours = time.hourOfPeriod == 0 ? 12 : time.hourOfPeriod;
    final period = time.period == DayPeriod.am ? 'AM' : 'PM';
    return '$hours:${time.minute.toString().padLeft(2, '0')} $period';
  }
}

Future<Duration?> showDurationPicker({
  required BuildContext context,
  required Duration initialTime,
}) async {
  // Implement a duration picker dialog here or use a third-party package
  return Duration(hours: 8, minutes: 30); // Example return value
}
