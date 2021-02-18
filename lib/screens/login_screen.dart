import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/logo_login.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Login',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'Enter Username',
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                style: TextStyle(color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'Enter Password',
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                child: FlatButton(
                  padding: EdgeInsets.all(18),
                  onPressed: () {
                    Toast.show("Toast plugin app", context,
                        duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                  },
                  child: Text('Login'),
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
