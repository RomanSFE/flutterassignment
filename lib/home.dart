import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App', style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.w600)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, World!',
              style: TextStyle(fontSize: 20, color: Colors.red[700], fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 18, color: Colors.black,),
            ),
            SizedBox(height: 25),
            Image.asset(
              'assets/flutterimg.png',
              height: 200,
            ),
            SizedBox(height: 30),
            ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Button Pressed!')),
              );
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              textStyle: TextStyle(fontSize: 16, color: Colors.black45),
              backgroundColor: Colors.green, // custom background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // rounded corners
              ),
            ),
            child: Text('Press Me'),
          ),

          ],
        ),
      ),
    );
  }
}
