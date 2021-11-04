import 'package:flutter/material.dart';
import './payfinal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final item = TextEditingController();
  final price = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Save your Wallet',
          style: TextStyle(color: Colors.orange),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.orange[700],
            child: Container(
              width: double.infinity,
              height: 150,
              child: const Text(
                'bar',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, color: Colors.blue),
              ),
            ),
          ),
          Payfinal(),
        ],
      ),
      backgroundColor: Colors.blue[500],
    );
  }
}
