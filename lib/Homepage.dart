import 'package:flutter/material.dart';
import 'package:travel_our/LoginPage.dart';
import 'fragments/home.dart';
import 'fragments/groups.dart';
import 'fragments/profile.dart';
import 'fragments/settings.dart';

final HomeFragment homeFragment = HomeFragment();
final ProfileFragment profileFragment = ProfileFragment();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    homeFragment,
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    profileFragment,
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.pink,
    ),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('Travel Our'),
        actions: [
          IconButton(
            icon: const Icon(Icons.login),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // Set the background color to green
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Settings',
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              child: Text(
                'Navigation Drawer',
                style: TextStyle(fontSize: 24),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
                leading: Icon(Icons.rate_review),
                title: Text('Rate Us'),
                onTap: () {
                  setState(() {});
                }),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
              onTap: () {
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
