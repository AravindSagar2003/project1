import 'package:flutter/material.dart';
import 'package:project1/screen/Blueberrypancake%20page.dart';

class BreakfastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        title: Text('Breakfast', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search Pancake',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Category', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildCategoryItem('Salad', 'assets/images/salad.png'),
                _buildCategoryItem('Cake', 'asset/images/cake.png'),
                _buildCategoryItem('Pie', 'asset/images/pie.png'),
                _buildCategoryItem('Smoothie', 'assets/images/smoothie.png'),
              ],
            ),
            SizedBox(height: 40),
            Text('Recommendation for Diet', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              children: [
                _buildRecommendationCard('Honey Pancake', 'Easy | 30mins | 180kCal', Colors.blue[100]!),
                _buildRecommendationCard('Canai Bread', 'Easy | 20mins | 250kCal', Colors.purple[100]!),
              ],
            ),
            SizedBox(height: 20),
            Text('Popular', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            _buildPopularItem('Blueberry Pancake', 'Medium | 30mins | 230kCal', 'asset/images/Blueberry.png',context),
            _buildPopularItem('Salmon Nigiri', 'Medium | 20mins | 120kCal', 'asset/images/salmonNigiri.png',context),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(String title, String imagePath) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath),
        ),
        SizedBox(height: 5),
        Text(title),
      ],
    );
  }

  Widget _buildRecommendationCard(String title, String subtitle, Color color) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // Icon or Image for the dish can be placed here
              Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(subtitle),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {

                },
                child: Text('View'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularItem(String title, String subtitle, String imagePath,BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Blueberrypancakepage()),);

      },
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
