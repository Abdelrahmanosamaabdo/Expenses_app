import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './paybars.dart';
import './payments.dart';

class Paychart extends StatelessWidget {
  final List<Payments> recentPays;

  Paychart(this.recentPays);

  List x = [];

  List<Map> get groupedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(
        Duration(days: index),
      );
      var totalSum = 0.0;

      for (var i = 0; i < recentPays.length; i++) {
        if (recentPays[i].date.day == weekDay.day &&
            recentPays[i].date.month == weekDay.month &&
            recentPays[i].date.year == weekDay.year) {
          totalSum += recentPays[i].amount;
        }
      }

      return {
        'day': DateFormat.E().format(weekDay).substring(0, 1),
        'amount': totalSum,
      };
    });
  }

  double get totalSpending {
    return groupedTransactionValues.fold(0.0, (sum, item) {
      return sum + item['amount'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: groupedTransactionValues.map((data) {
          return Flexible(
            fit: FlexFit.tight,
            child: Paybars(
              data['day'],
              data['amount'],
              data['amount'],
            ),
          );
        }).toList(),
      ),
    );
  }
}
