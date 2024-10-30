import 'package:flutter/material.dart';

import 'Addschedule.dart';

class WorkoutScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
                    Navigator.pop(context);
                  },),
                  Text(
                    "Workout Schedule",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DateWidget(date: "Tue", day: "11"),
                  DateWidget(date: "Wed", day: "12"),
                  DateWidget(date: "Thu", day: "13"),
                  DateWidget(date: "Fri", day: "14", isSelected: true),
                  DateWidget(date: "Sat", day: "15"),
                  DateWidget(date: "Sun", day: "16"),
                  DateWidget(date: "Mon", day: "17"),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    children: [
                      TimeSlot(time: "06:00 AM"),
                      TimeSlot(time: "07:00 AM", label: "Ab Workout, 7:30am", color: Colors.purpleAccent),
                      TimeSlot(time: "08:00 AM"),
                      TimeSlot(time: "09:00 AM", label: "Upperbody Workout, 9am", color: Colors.purple),
                      TimeSlot(time: "10:00 AM"),
                      TimeSlot(time: "11:00 AM"),
                      TimeSlot(time: "12:00 PM"),
                      TimeSlot(time: "01:00 PM"),
                      TimeSlot(time: "02:00 PM"),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Row(
                                  children: [
                                    Icon(Icons.cancel_sharp),
                                    SizedBox(width: 10,),

                                    Text("Workout Schedule",style: TextStyle(fontSize: 20),),
                                  ],
                                ),
                                content: Container(
                                  height: 100,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Lowerbody Workout",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Row(
                                        children: [
                                          Icon(Icons.timer),
                                          Text('Today/03.00pm'),
                                        ],
                                      ),
                                      Center(
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },

                                          child: Text("Mark as Done"),

                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              );
                            },
                          );
                        },
                        child: TimeSlot(
                          time: "03:00 PM",
                          label: "Lowerbody Workout, 3pm",
                          color: Colors.purpleAccent,
                        ),
                      ),
                      TimeSlot(time: "04:00 PM"),
                      TimeSlot(time: "05:00 PM"),
                      TimeSlot(time: "06:00 PM"),
                      TimeSlot(time: "07:00 PM"),
                      TimeSlot(time: "08:00 PM"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddScheduleScreen()),);

          },
          backgroundColor: Colors.purpleAccent,
          child: Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class DateWidget extends StatelessWidget {
  final String date;
  final String day;
  final bool isSelected;

  DateWidget({required this.date, required this.day, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blueAccent : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(date, style: TextStyle(color: isSelected ? Colors.white : Colors.black)),
          Text(day, style: TextStyle(color: isSelected ? Colors.white : Colors.black, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class TimeSlot extends StatelessWidget {
  final String time;
  final String? label;
  final Color? color;

  TimeSlot({required this.time, this.label, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(time, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 16),
          if (label != null)
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: color?.withOpacity(0.3) ?? Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  label!,
                  style: TextStyle(color: color),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
