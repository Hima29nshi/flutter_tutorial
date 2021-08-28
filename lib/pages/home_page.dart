import 'package:flutter/material.dart';
import 'package:project_1/utils/routes.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catalog App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(children: [
          Text('Welcome to $days Flutter Project'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.loginRoute);
            },
            child: Text(
              'Login',
              style: TextStyle(fontSize: 18.0),
            ),
            style: TextButton.styleFrom(minimumSize: Size(150, 40)),
          )
        ]),
      ),
      drawer: Drawer(),
    );
  }
}
