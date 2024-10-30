import 'package:flutter/material.dart';

class Blueberrypancakepage extends StatelessWidget {
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
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      'asset/images/cakebluberry.png',
                      height: 200,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Blueberry Pancake',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'by James Ruth',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset('asset/images/Calories-Icon.png', height: 32, width: 32),
                          SizedBox(height: 4),
                          Text('180KCal'),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('asset/images/Fat-Icon.png', height: 32, width: 32),
                          SizedBox(height: 4),
                          Text('30g fats'),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('asset/images/Proteins-Icon.png', height: 32, width: 32),
                          SizedBox(height: 4),
                          Text('20g proteins'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Pancakes are some people\'s favorite breakfast...',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Ingredients That You Will Need',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        {'name': 'Wheat Flour', 'amount': '100g', 'imagePath': 'asset/images/Flour-Icon.png'},
                        {'name': 'Sugar', 'amount': '3 tbsp', 'imagePath': 'asset/images/Sugar-Icon.png'},
                        {'name': 'Baking Soda', 'amount': '2 tsp', 'imagePath': 'asset/images/BakingSoda-Icon.png'},
                        {'name': 'Eggs', 'amount': '2 items', 'imagePath': 'asset/images/Eggs-Icon.png'},
                      ]
                          .map((ingredient) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[50],
                              ),
                              child: Image.asset(ingredient['imagePath']!),
                            ),
                            SizedBox(height: 8),
                            Text(
                              ingredient['name']!,
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              ingredient['amount']!,
                              style: TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                          ],
                        ),
                      ))
                          .toList(),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Step by Step',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  StepList(),
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
          child: Text('Add to Breakfast Meal'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}

class StepList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final steps = [
      'Prepare all of the ingredients needed',
      'Mix flour, sugar, salt, and baking powder',
      'In a separate place, mix the eggs and milk until blended',
      'Add the egg mixture to the flour mixture and stir until smooth',
      'Heat a non-stick pan over medium heat',
      'Pour batter onto the pan and cook until bubbles form',
      'Flip and cook the other side until golden brown',
      'Serve with honey and blueberries on top',
    ];

    return Column(
      children: steps
          .asMap()
          .entries
          .map((entry) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.grey,
                ),
                if (entry.key < steps.length - 1)
                  Container(
                    width: 2,
                    height: 50,
                    color: Colors.grey,
                  ),
              ],
            ),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                '${entry.key + 1}. ${entry.value}',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ))
          .toList(),
    );
  }
}
