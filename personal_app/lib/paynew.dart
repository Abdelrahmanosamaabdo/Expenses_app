import 'package:flutter/material.dart';
import './paylist.dart';
import './payments.dart';

class Paynew extends StatefulWidget {
  const Paynew({Key? key}) : super(key: key);

  @override
  _PaynewState createState() => _PaynewState();
}

class _PaynewState extends State<Paynew> {
  final item = TextEditingController();
  final price = TextEditingController();

  final List<Payments> _payment = [];
  double _total = 0.0;
  int _x = 0;
  void _addition(String item, String price) {
    _x++;
    _total += double.parse(price);
    double pricetwo = double.parse(price);
    final _new = Payments(
        number: _x, name: item, amount: pricetwo, date: DateTime.now());

    print(_new.number);

    setState(() {
      _payment.add(_new);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 598,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 295,
                  child: Column(
                    children: [
                      Container(
                        child: TextField(
                          decoration:
                              InputDecoration(labelText: 'Enter item name'),
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
                    onPressed: () => _addition(item.text, price.text),
                  ),
                ),
              ],
            ),
          ),
          Paylist(_payment),
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.orange,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$_total',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Coulumn {}
