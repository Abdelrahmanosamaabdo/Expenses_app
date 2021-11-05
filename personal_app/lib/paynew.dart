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
  final _totalempty = 'No items yet!!';

  final List<Payments> _payment = [];
  double _total = 0.0;
  int _x = 0;
  void _addition(String item1, String price1) {
    _x++;
    _total += double.parse(price1);
    double pricetwo = double.parse(price1);
    final _new = Payments(
        number: _x, name: item1, amount: pricetwo, date: DateTime.now());

    print(_new.number);

    setState(() {
      _payment.add(_new);
      item.text = '';
      price.text = '';
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
          Column(
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
                              decoration:
                                  InputDecoration(labelText: 'Enter price'),
                              keyboardType: TextInputType.number,
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
              Container(
                height: 400,
                child: SingleChildScrollView(
                  child: Paylist(_payment),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.orange,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${_payment.isEmpty ? _totalempty : _total.toStringAsFixed(2)}',
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
