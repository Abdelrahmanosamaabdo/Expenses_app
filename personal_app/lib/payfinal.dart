import 'package:flutter/material.dart';
import './paylist.dart';
import './paynew.dart';
import './payments.dart';

class Payfinal extends StatefulWidget {
  const Payfinal({Key? key}) : super(key: key);

  @override
  _PayfinalState createState() => _PayfinalState();
}

class _PayfinalState extends State<Payfinal> {
  final List<Payments> _payment = [
    Payments(
        number: 1,
        name: 'Market',
        amount: '99',
        date: DateTime.utc(2021, 9, 3, 7, 9, 8)),
    Payments(
        number: 1,
        name: 'Clothes',
        amount: '100',
        date: DateTime.utc(2021, 12, 30, 14, 6)),
  ];

  int _x = 0;
  void _addition(String item, String price) {
    _x++;
    //double pricetwo = double.parse(price);
    final _new =
        Payments(number: _x, name: item, amount: price, date: DateTime.now());

    /*setState(() {
      _payment.add(_new);
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Paynew(_addition),
        Paylist(_payment),
      ],
    );
  }
}
