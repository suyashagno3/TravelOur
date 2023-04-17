import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Website'),
      ),
      body: Center(
        child: Text('Welcome to the Travel Website'),
      ),
    );
  }
}
