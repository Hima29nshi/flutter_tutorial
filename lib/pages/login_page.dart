import 'package:flutter/material.dart';
import 'package:project_1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Welcome to La La Land',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Column(children: [
                    TextFormField(
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                          hintText: 'Enter Username', labelText: 'Username'),
                    ),
                    TextFormField(
                      style: TextStyle(fontSize: 18.0),
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Enter Password', labelText: 'Password'),
                    )
                  ])),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18.0),
                ),
                style: TextButton.styleFrom(minimumSize: Size(150, 40)),
              )
            ],
          ),
        ));
  }
}
