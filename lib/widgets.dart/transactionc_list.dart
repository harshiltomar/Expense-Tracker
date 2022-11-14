import 'package:flutter/material.dart';
import 'package:expensetracker/models/transactions.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: '101',
        title: 'Oversized T',
        amount: 69.99,
        date: DateTime.now()),
    Transaction(
        id: '102',
        title: 'Netflix Renewal',
        amount: 16.53,
        date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
