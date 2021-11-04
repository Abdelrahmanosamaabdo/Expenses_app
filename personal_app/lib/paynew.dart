import 'package:flutter/material.dart';

class Paynew extends StatelessWidget {
  final Function additionfunction;
  final item = TextEditingController();
  final price = TextEditingController();

  Paynew(this.additionfunction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 295,
            child: Column(
              children: [
                Container(
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Enter item name'),
                    cursorColor: Colors.orange,
                    controller: item,
                  ),
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Enter price'),
                    cursorColor: Colors.orange,
                    controller: price,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 100,
            child: FlatButton(
              child: Text(
                'ADD',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue[600],
                    fontWeight: FontWeight.w900),
              ),
              onPressed: additionfunction(item.text, price.text),
            ),
          ),
        ],
      ),
    );
  }
}
