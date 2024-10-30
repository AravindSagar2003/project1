import 'package:flutter/material.dart';

import 'jumpingjaackpage.dart';

class Fullbodyworkoutpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Center(
                child: Image.asset('asset/images/skippingmain.png'), // Add your image here
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(

                        "Fullbody Workout",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),

                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        "11 Exercises | 32mins | 320 Calories Burn",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.favorite,color: Colors.red,)),

                    ],
                  ),

                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(width: 8),
                      Container(child: Text("Schedule Workout: 5/27, 09:00 AM"), decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(8)
                      ),),

                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.bar_chart),
                      SizedBox(width: 8),
                      Container(child: Text("Difficulty: Beginner"),decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(8)
                      ),),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "You'll Need",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image(image: AssetImage('asset/images/barbel.png')),
                          SizedBox(height: 4),
                          Text("Barbell"),
                        ],
                      ),
                      Column(
                        children: [
                          Image(image: AssetImage('asset/images/skipping-rope.png')),
                          SizedBox(height: 4),
                          Text("Skipping Rope"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Exercises",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  ExerciseList(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Start Workout"),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 16),
            backgroundColor: Colors.blue.shade100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}

class ExerciseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset('asset/images/warmup.png'),
          title: Text('Warm Up'),
          subtitle: Text('05:00'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap:(){},

        ),
        ListTile(
          leading: Image.asset('asset/images/jumpingjack.png'),
          title: Text('Jumping Jack'),
          subtitle: Text('12x'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>JumpingJackPage()),);


          },

        ),
        ListTile(
          leading: Image.asset('asset/images/skipping.png'),
          title: Text('Skipping'),
          subtitle: Text('15x'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap:(){},
        ),
        ListTile(
          leading: Image.asset('asset/images/squats.png'),
          title: Text('Squats'),
          subtitle: Text('20x'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap:(){},

        ),
        ListTile(
          leading: Image.asset('asset/images/armraise.png'),
          title: Text('Arm Raises'),
          subtitle: Text('00:53'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap:(){},

        ),
        ListTile(
          leading: Image.asset('asset/images/restanddrink.png'),
          title: Text('Rest and Drink'),
          subtitle: Text('02:00'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap:(){},

        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text('Set 2', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: Image.asset('asset/images/inclinepushup.png'),
          title: Text('Incline Push-Ups'),
          subtitle: Text('12x'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap:(){},

        ),
        ListTile(
          leading: Image.asset('asset/images/push-ups.png'),
          title: Text('Push-Ups'),
          subtitle: Text('15x'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap:(){},

        ),
      ],
    );
  }
}
