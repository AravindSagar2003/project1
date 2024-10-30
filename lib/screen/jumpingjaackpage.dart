import 'package:flutter/material.dart';

import 'Fullbodyworkoutpage.dart';

class JumpingJackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  child: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Fullbodyworkoutpage()),);

                  },), ),


                Positioned(
                  top: 40,
                  right: 20,
                  child: Icon(Icons.more_vert, color: Colors.white),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Image.asset('asset/images/jumbjack.png'), // Add your image here
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jumping Jack",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Easy | 390 Calories Burn",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Descriptions",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "A jumping jack, also known as a star jump and called a side-straddle hop in the US military, is a physical jumping exercise performed by jumping to a position with the legs spread wide.",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "How To Do It",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Column(
                    children: [
                      TimelineStep(
                        stepNumber: "1",
                        title: "Spread Your Arms",
                        description: "To make the gestures feel more relaxed, stretch your arms as you start this movement. No bending of hands.",
                      ),
                      TimelineStep(
                        stepNumber: "2",
                        title: "Rest at The Toe",
                        description: "The basis of this movement is jumping. Now, what needs to be considered is that you have to use the tips of your feet.",
                      ),
                      TimelineStep(
                        stepNumber: "3",
                        title: "Adjust Foot Movement",
                        description: "Jumping Jack is not just an ordinary jump. But, you also have to pay close attention to leg movements.",
                      ),
                      TimelineStep(
                        stepNumber: "4",
                        title: "Clapping Both Hands",
                        description: "This cannot be taken lightly. You see, without realizing it, the clapping of your hands helps you to keep your rhythm while doing the Jumping Jack.",
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Custom Repetitions",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.local_fire_department, color: Colors.redAccent),
                          SizedBox(width: 8),
                          Text("450 Calories Burn"),
                          Spacer(),
                          Text("29 times"),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.local_fire_department, color: Colors.redAccent),
                          SizedBox(width: 8),
                          Text("450 Calories Burn"),
                          Spacer(),
                          Text("30 times"),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.local_fire_department, color: Colors.redAccent),
                          SizedBox(width: 8),
                          Text("450 Calories Burn"),
                          Spacer(),
                          Text("31 times"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Save"),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: Colors.blue.shade100,
                        foregroundColor: Colors.black54,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimelineStep extends StatelessWidget {
  final String stepNumber;
  final String title;
  final String description;

  const TimelineStep({
    Key? key,
    required this.stepNumber,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.purple,
                child: Text(
                  stepNumber,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: 2,
                height: 40,
                color: Colors.purple,
              ),
            ],
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 8),
                    Text(
                      title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, top: 4),
                  child: Text(
                    description,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
