import 'package:flutter/material.dart';

import 'loginpage.dart';

class GoalSelection3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'What is your goal ?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'It will help us to choose the best program for you',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,borderRadius: BorderRadius.circular(20),
                  ), // Set the container's color to blue
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                          child: Image.asset(
                            'asset/images/wtsgoal3.png',                            // Place your image in the assets folder
                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(height: 16),
                        Text(
                          'Loss a Fat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),

                        ),
                        Divider(
                          color: Colors.white,
                          indent: 90,
                          endIndent: 90,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'I have a low amount of body fat and need/want to build more muscle',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 80),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()),);


                    // Add your onPressed code here!
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                      'Confirm',
                      style: TextStyle(fontSize: 16,color: Colors.white)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
