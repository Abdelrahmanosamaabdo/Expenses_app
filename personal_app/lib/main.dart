import 'package:flutter/material.dart';
import 'paynew.dart';

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

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final item = TextEditingController();

  final price = TextEditingController();

  void _info(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return Container(
          width: 350,
          height: 400,
          color: Colors.orange,
          child: Column(
            children: [
              Container(
                width: 350,
                height: 320,
                color: Colors.orange,
                child: Text(
                  '''                    How to use?
This app is used to calculate the prseonal expenses.
Enter the bought items in the first field,
enter the prices next and press the "ADD" button.
Your total amount of spent money is shown at the bottom.
There is also a chart for last week spendings at the top.
Good luck saving your money!!''',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                  ),
                ),
              ),
              FloatingActionButton(
                onPressed: Navigator.of(context).pop,
                child: Icon(
                  Icons.close,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SAVE YOUR MONEY',
          style: TextStyle(color: Colors.orange[400]),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () => _info(context),
            child: Text(
              'Info',
              style: TextStyle(color: Colors.orange[400], fontSize: 16),
            ),
          ),
        ],
        backgroundColor: Colors.blue[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Card(
              color: Colors.orange,
              child: Container(
                width: double.infinity,
                height: 150,
                child: const Text(
                  ' ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.blue),
                ),
              ),
            ),
            Paynew(),
          ],
        ),
      ),
      backgroundColor: Colors.blue[500],
    );
  }
}
