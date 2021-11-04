import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './payments.dart';

class Paylist extends StatelessWidget {
  final List<Payments> pay;

  Paylist(this.pay);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: pay.map((x) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              child: Column(children: [
                Container(
                  width: 295,
                  height: 25,
                  child: Text(
                    '${x.name}',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue[600],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  width: 295,
                  height: 25,
                  child: Text(
                    '${DateFormat('(hh:mm a) dd/MMM yyyy').format(x.date)},',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.orange[300],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ]),
            ),
            Card(
              child: Container(
                alignment: Alignment.center,
                width: 100,
                height: 50,
                child: Text(
                  '${x.amount}\$',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.blue[600],
                  ),
                ),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
