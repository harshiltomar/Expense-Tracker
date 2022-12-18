import 'package:flutter/foundation.dart';

class Transaction {
  late String id;
  late String title;
  late double amount;
  late DateTime date;

  // constructor to pass value
  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });
}
