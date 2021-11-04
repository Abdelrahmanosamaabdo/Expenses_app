import 'package:flutter/foundation.dart';

class Payments {
  final int number;
  final String name;
  final double amount;
  final DateTime date;

  Payments({
    required this.number,
    required this.name,
    required this.amount,
    required this.date,
  });
}
