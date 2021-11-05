import 'package:flutter/material.dart';

class Paybars extends StatelessWidget {
  final String label;
  final double payAmount;
  final double spendingPctOfTotal;

  Paybars(this.label, this.payAmount, this.spendingPctOfTotal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FittedBox(
          child: Text('${payAmount.toStringAsFixed(0)}',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                  fontSize: 16)),
        ),
        SizedBox(
          height: 3,
        ),
        Container(
          height: 100,
          width: 30,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 1.0),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendingPctOfTotal,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(label,
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.w900, fontSize: 16)),
      ],
    );
  }
}
