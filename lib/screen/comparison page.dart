import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ComparisonScreen(),
    );
  }
}

class ComparisonScreen extends StatefulWidget {
  @override
  _ComparisonScreenState createState() => _ComparisonScreenState();
}

class _ComparisonScreenState extends State<ComparisonScreen> {
  String month1 = "Select Month";
  String month2 = "Select Month";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Comparison'),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
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
            MonthSelectionTile(
              title: 'Select Month 1',
              selectedMonth: month1,
              onTap: () async {
                final selected = await _selectMonth(context, month1);
                if (selected != null) {
                  setState(() {
                    month1 = selected;
                  });
                }
              },
            ),
            SizedBox(height: 16),
            MonthSelectionTile(
              title: 'Select Month 2',
              selectedMonth: month2,
              onTap: () async {
                final selected = await _selectMonth(context, month2);
                if (selected != null) {
                  setState(() {
                    month2 = selected;
                  });
                }
              },
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Implement comparison logic here
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
              child: Text('Compare', style: TextStyle(fontSize: 16,color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  Future<String?> _selectMonth(BuildContext context, String currentMonth) async {
    // Implement month selection logic (e.g., using a dialog or a bottom sheet)
    // For demonstration purposes, we'll just toggle between two months
    return currentMonth == "May" ? "June" : "May";
  }
}

class MonthSelectionTile extends StatelessWidget {
  final String title;
  final String selectedMonth;
  final VoidCallback onTap;

  const MonthSelectionTile({
    required this.title,
    required this.selectedMonth,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.calendar_today, color: Colors.black54),
                SizedBox(width: 8),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  selectedMonth,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward, color: Colors.black54),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
