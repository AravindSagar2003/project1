import 'package:flutter/material.dart';

class MealSchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Meal Schedule',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon:Icon(Icons.arrow_back_ios),
                  onPressed: (){

                  },
                  selectedIcon: Text(
                    'May 2021',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
      ),
    ],),
            ),
            SizedBox(height: 8),
            Container(
              height: 100, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  int day = index + 12;
                  bool isSelected = index == 2;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Text('Fri'),
                        SizedBox(height: 8),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: isSelected ? Colors.blue : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              '$day',
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            _buildMealSection(
              'Breakfast',
              [
                {'name': 'Honey Pancake', 'time': '07:00am'},
                {'name': 'Coffee', 'time': '07:30am'},
              ],
              230,
            ),
            _buildMealSection(
              'Lunch',
              [
                {'name': 'Chicken Steak', 'time': '01:00pm'},
                {'name': 'Milk', 'time': '01:20pm'},
              ],
              500,
            ),
            _buildMealSection(
              'Snacks',
              [
                {'name': 'Orange', 'time': '04:30pm'},
                {'name': 'Apple Pie', 'time': '04:40pm'},
              ],
              140,
            ),
            _buildMealSection(
              'Dinner',
              [
                {'name': 'Salad', 'time': '07:10pm'},
                {'name': 'Oatmeal', 'time': '08:10pm'},
              ],
              120,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Today Meal Nutritions',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.local_fire_department, color: Colors.red),
                        SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Calories'),
                              SizedBox(height: 4),
                              LinearProgressIndicator(
                                value: 320 / 600,
                                backgroundColor: Colors.red.withOpacity(0.3),
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8),
                        Text('320/600'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.fitness_center, color: Colors.purple),
                        SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Proteins'),
                              SizedBox(height: 4),
                              LinearProgressIndicator(
                                value: 300 / 400,
                                backgroundColor: Colors.purple.withOpacity(0.3),
                                color: Colors.purple,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8),
                        Text('300/400'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.opacity, color: Colors.orange),
                        SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Fats'),
                              SizedBox(height: 4),
                              LinearProgressIndicator(
                                value: 150 / 300,
                                backgroundColor: Colors.orange.withOpacity(0.3),
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8),
                        Text('150/300'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildMealSection(String title, List<Map<String, String>> meals, int calories) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title  ${meals.length} meals | $calories calories',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Column(
            children: meals.map((meal) {
              return ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(
                  'asset/images/Honeycake.png', // Placeholder for meal icon
                  width: 40,
                  height: 40,
                ),
                title: Text(meal['name']!),
                subtitle: Text(meal['time']!),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {}, // Example onTap action
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
