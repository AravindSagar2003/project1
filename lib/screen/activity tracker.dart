import 'package:flutter/material.dart';
import 'package:project1/screen/profile.dart';

class ActivityTrackerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Weekly';

    return Scaffold(
      appBar: AppBar(
        title: Text('Activity Tracker'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back, color: Colors.black),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [Card(

                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text('Today Target',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text('8L', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Image(image:AssetImage('asset/images/glass 1.png')),
                          Text('Water Intake'),
                        ],
                      ),
                      Column(
                        children: [
                          Text('2400', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Image(image:AssetImage('asset/images/boots 1.png')),
                          Text('Foot Steps'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()),);

                      // Add your onPressed code here!
                    },

                    icon: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(Icons.add)),
                  ),
                ),
        ]
            ),
        

            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Activity Progress', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.black),
                underline:Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  onChanged: (String? newValue) {
                    // Handle the change
                  },
                  items: <String>['Daily', 'Weekly', 'Monthly']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(7, (index) {
                return Column(
                  children: [
                    Container(
                      height: 100,
                      width: 20,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(height: 5),
                    Text(['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'][index]),
                  ],
                );
              }),
            ),
            SizedBox(height: 20),
            Text('Latest Activity', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Image.asset('asset/images/drinkingwater.png'),
                    ),
                    title: Text('Drinking 300ml Water'),
                    subtitle: Text('About 3 minutes ago'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Image.asset('asset/images/Eatsnacks.png'),
                    ),
                    title: Text('Eat Snack (Fitbar)'),
                    subtitle: Text('About 10 minutes ago'),
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
