import 'package:flutter/material.dart';

void main() {
  runApp(DashboardApp());
}

class DashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // First row with two items
            Row(
              children: [
                Expanded(
                  child: DashboardItem(
                    icon: Icons.account_circle,
                    title: 'Users',
                    count: 120,
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: DashboardItem(
                    icon: Icons.shopping_cart,
                    title: 'Orders',
                    count: 80,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            // Second row with one item
            Expanded(
              child: DashboardItem(
                icon: Icons.insert_chart,
                title: 'Sales',
                count: 500,
              ),
            ),
            SizedBox(height: 16.0),
            // Third row with two items
            Row(
              children: [
                Expanded(
                  child: DashboardItem(
                    icon: Icons.timeline,
                    title: 'Analytics',
                    count: 250,
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: DashboardItem(
                    icon: Icons.settings,
                    title: 'Settings',
                    count: 0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final int count;

  DashboardItem({
    required this.icon,
    required this.title,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48.0),
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            count.toString(),
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
